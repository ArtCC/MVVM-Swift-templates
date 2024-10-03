//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created ___FULLUSERNAME___ on ___DATE___.
//  Copyright © ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import Foundation

final class ___VARIABLE_MVVMSwiftModuleName___ViewModel: ObservableObject {
    // MARK: - Properties

    enum Event {
        case viewAppeared
    }

    enum State: Equatable {
        case loading
        case loaded(LoadedState)
    }

    struct LoadedState: Equatable {
    }

    @Published private(set) var state: State

    // MARK: - Init

    init(state: State = .loading) {
        self.state = state
    }

    // MARK: - Input functions

    func send(_ event: Event) {
        switch event {
        case .viewAppeared:
            state = .loaded(.init())
        }
    }
}

// MARK: - Private

private extension ___VARIABLE_MVVMSwiftModuleName___ViewModel {
}
