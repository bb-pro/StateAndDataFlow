//
//  StateAndDataFlowApp.swift
//  StateAndDataFlow
//
//  Created by Bektemur Mamashayev on 28/04/23.
//

import SwiftUI

@main
struct StateAndDataFlowApp: App {
    
    private let user = DataManager.shared.loadUser()
    
    var body: some Scene {
        WindowGroup {
            RootView()
                .environmentObject(UserSettings(user: user))
        }
    }
}
