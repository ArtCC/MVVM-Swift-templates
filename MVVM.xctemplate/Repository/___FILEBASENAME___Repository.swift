//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created ___FULLUSERNAME___ on ___DATE___.
//  Copyright © ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import Foundation

protocol ___VARIABLE_MVVMSwiftModuleName___RepositoryProtocol: Sendable {
    func fetch() async throws -> [String]
}

struct ___VARIABLE_MVVMSwiftModuleName___Repository: ___VARIABLE_MVVMSwiftModuleName___RepositoryProtocol {
    // MARK: - Init

    init() {}

    // MARK: - Public

    func fetch() async throws -> [String] {
        []
    }
}