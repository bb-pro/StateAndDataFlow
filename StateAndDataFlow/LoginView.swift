//
//  LoginView.swift
//  StateAndDataFlow
//
//  Created by Bektemur Mamashayev on 28/04/23.
//

import SwiftUI

struct LoginView: View {
    @State private var name = ""
    @EnvironmentObject private var userSettings: UserSettings
    
    
    var body: some View {
        VStack {
            HStack {
                TextField("Enter your name", text: $name)
                    .multilineTextAlignment(.center)
                Text(name.count.formatted())
                    .foregroundColor(name.count < 3 ? Color.red : Color.green)
                Spacer()
            }
            Button(action: login) {
                HStack {
                    Image(systemName: "checkmark.circle")
                    Text("Ok")
                }
                .disabled(name.count < 3)
                
            }
        }
    }
    
    private func login() {
        if !name.isEmpty {
            userSettings.user.name = name
            userSettings.user.isLoggedIn.toggle()
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
