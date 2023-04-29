//
//  DataManager.swift
//  StateAndDataFlow
//
//  Created by Bektemur Mamashayev on 29/04/23.
//

import SwiftUI


class DataManager {
    static let shared = DataManager()
    
    @AppStorage("user") private var userData: Data?
    
    private init() {}
    
    func save(user: User) {
        userData = try? JSONEncoder().encode(user)
    }
    
    func loadUser() -> User {
        guard let user = try? JSONDecoder().decode(User.self, from: userData ?? Data()) else { return User() }
        return user
    }
    
    func clear(userManager: UserSettings) {
        userManager.user.isLoggedIn = false
        userManager.user.name = ""
        userData = nil
    }
}
