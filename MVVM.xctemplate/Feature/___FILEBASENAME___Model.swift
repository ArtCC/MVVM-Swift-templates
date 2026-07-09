//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created ___FULLUSERNAME___ on ___DATE___.
//  Copyright © ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import Foundation

struct ___VARIABLE_MVVMSwiftModuleName___Item: Identifiable, Equatable, Sendable {
    let id: UUID
    let title: String

    init(
        id: UUID = UUID(),
        title: String
    ) {
        self.id = id
        self.title = title
    }
}