//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created ___FULLUSERNAME___ on ___DATE___.
//  Copyright © ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import Foundation

protocol ___VARIABLE_MVVMSwiftModuleName___UseCaseProtocol: Sendable {
    func execute() async throws -> [___VARIABLE_MVVMSwiftModuleName___Item]
}

struct ___VARIABLE_MVVMSwiftModuleName___UseCase: ___VARIABLE_MVVMSwiftModuleName___UseCaseProtocol {
    // MARK: - Properties

    private let repository: any ___VARIABLE_MVVMSwiftModuleName___RepositoryProtocol

    // MARK: - Init

    init(repository: any ___VARIABLE_MVVMSwiftModuleName___RepositoryProtocol = ___VARIABLE_MVVMSwiftModuleName___Repository()) {
        self.repository = repository
    }

    // MARK: - Execute

    func execute() async throws -> [___VARIABLE_MVVMSwiftModuleName___Item] {
        try await repository.fetchItems()
    }
}