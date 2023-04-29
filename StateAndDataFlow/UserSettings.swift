//
//  UserSettings.swift
//  StateAndDataFlow
//
//  Created by Bektemur Mamashayev on 28/04/23.
//

import Foundation

final class UserSettings: ObservableObject {
    @Published var user = User()
    
    init(user: User = User()) {
        self.user = user
    }
}


