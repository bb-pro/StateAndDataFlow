//
//  RootView.swift
//  StateAndDataFlow
//
//  Created by Bektemur Mamashayev on 28/04/23.
//

import SwiftUI

struct RootView: View {
    @StateObject private var userSettings = UserSettings()
    
    var body: some View {
        Group {
            if userSettings.isLoggedIn {
                ContentView()
            } else {
                LoginView()
            }
        }.environmentObject(userSettings)
    }
}

struct RootView_Previews: PreviewProvider {
    static var previews: some View {
        RootView()
    }
}
