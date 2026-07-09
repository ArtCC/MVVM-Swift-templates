//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created ___FULLUSERNAME___ on ___DATE___.
//  Copyright © ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import Foundation

protocol ___VARIABLE_MVVMSwiftModuleName___RepositoryProtocol: Sendable {
    func fetchItems() async throws -> [___VARIABLE_MVVMSwiftModuleName___Item]
}

struct ___VARIABLE_MVVMSwiftModuleName___Repository: ___VARIABLE_MVVMSwiftModuleName___RepositoryProtocol {
    // MARK: - Init

    init() {}

    // MARK: - Public

    func fetchItems() async throws -> [___VARIABLE_MVVMSwiftModuleName___Item] {
        [
            ___VARIABLE_MVVMSwiftModuleName___Item(title: String(localized: "First item")),
            ___VARIABLE_MVVMSwiftModuleName___Item(title: String(localized: "Second item"))
        ]
    }
}