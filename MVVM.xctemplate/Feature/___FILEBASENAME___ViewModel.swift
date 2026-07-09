//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created ___FULLUSERNAME___ on ___DATE___.
//  Copyright © ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import Foundation
import Observation

@Observable
@MainActor
final class ___VARIABLE_MVVMSwiftModuleName___ViewModel {
    // MARK: - Properties

    enum Event {
        case viewAppeared
        case refreshTapped
    }

    enum State: Equatable {
        case loading
        case loaded(LoadedState)
    }

    struct LoadedState: Equatable {
        var items: [___VARIABLE_MVVMSwiftModuleName___Item] = []
        var errorMessage: String?
        var isRefreshing = false
    }

    private(set) var state: State

    private let useCase: any ___VARIABLE_MVVMSwiftModuleName___UseCaseProtocol

    // MARK: - Init

    init(
        state: State = .loading,
        useCase: any ___VARIABLE_MVVMSwiftModuleName___UseCaseProtocol = ___VARIABLE_MVVMSwiftModuleName___UseCase()
    ) {
        self.state = state
        self.useCase = useCase
    }

    // MARK: - Input functions

    func send(_ event: Event) {
        switch event {
        case .viewAppeared:
            loadItems()
        case .refreshTapped:
            refreshItems()
        }
    }
}

// MARK: - Private

private extension ___VARIABLE_MVVMSwiftModuleName___ViewModel {
    func loadItems() {
        state = .loading

        Task {
            do {
                let items = try await useCase.execute()
                state = .loaded(.init(items: items))
            } catch {
                state = .loaded(.init(errorMessage: error.localizedDescription))
            }
        }
    }

    func refreshItems() {
        guard case .loaded(var loadedState) = state else { return }
        loadedState.isRefreshing = true
        loadedState.errorMessage = nil
        state = .loaded(loadedState)

        Task {
            do {
                let items = try await useCase.execute()
                state = .loaded(.init(items: items))
            } catch {
                guard case .loaded(var currentState) = state else { return }
                currentState.isRefreshing = false
                currentState.errorMessage = error.localizedDescription
                state = .loaded(currentState)
            }
        }
    }
}