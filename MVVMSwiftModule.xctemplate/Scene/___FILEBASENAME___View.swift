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

    @StateObject var viewModel = ___VARIABLE_MVVMSwiftModuleName___ViewModel()

    // MARK: - View

    var body: some View {
        ZStack {
            switch viewModel.state {
            case .loading:
                ProgressView()
            case .loaded:
                VStack {
                    Image(systemName: "globe")
                        .imageScale(.large)
                        .foregroundStyle(.tint)
                    Text("hello.world.text")
                }
                .padding()
            }
        }
        .onAppear {
            viewModel.send(.viewAppeared)
        }
    }
}

#Preview {
    ___VARIABLE_MVVMSwiftModuleName___View()
}
