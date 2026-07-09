//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created ___FULLUSERNAME___ on ___DATE___.
//  Copyright © ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import SwiftUI

struct ___VARIABLE_MVVMSwiftModuleName___View: View {
    // MARK: - Properties

    @State private var viewModel = ___VARIABLE_MVVMSwiftModuleName___ViewModel()

    // MARK: - View

    var body: some View {
        Group {
            switch viewModel.state {
            case .loading:
                ProgressView()
            case .loaded(let loadedState):
                loadedView(loadedState)
            }
        }
        .navigationTitle(String(localized: "___VARIABLE_MVVMSwiftModuleName___"))
        .toolbar {
            ToolbarItem(placement: .automatic) {
                Button {
                    viewModel.send(.refreshTapped)
                } label: {
                    Image(systemName: "arrow.clockwise")
                }
                .accessibilityLabel(String(localized: "Refresh"))
            }
        }
        .task {
            viewModel.send(.viewAppeared)
        }
    }
}

// MARK: - Private

private extension ___VARIABLE_MVVMSwiftModuleName___View {
    func loadedView(_ loadedState: ___VARIABLE_MVVMSwiftModuleName___ViewModel.LoadedState) -> some View {
        Group {
            if let errorMessage = loadedState.errorMessage, loadedState.items.isEmpty {
                VStack(spacing: 12) {
                    Image(systemName: "exclamationmark.triangle")
                        .font(.largeTitle)
                    Text(errorMessage)
                        .multilineTextAlignment(.center)
                    Button(String(localized: "Retry")) {
                        viewModel.send(.refreshTapped)
                    }
                }
                .padding()
            } else {
                List(loadedState.items) { item in
                    Text(item.title)
                }
                .overlay {
                    if loadedState.isRefreshing {
                        ProgressView()
                    }
                }
            }
        }
    }
}

#Preview {
    NavigationStack {
        ___VARIABLE_MVVMSwiftModuleName___View()
    }
}