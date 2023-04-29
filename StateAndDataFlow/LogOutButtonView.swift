//
//  LogOutButtonView.swift
//  StateAndDataFlow
//
//  Created by Bektemur Mamashayev on 29/04/23.
//

import SwiftUI

struct LogOutButtonView: View {
    
    var action: () -> Void
    
    var body: some View {
        
        Button(action: action) {
            Text("LogOut")
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(.white)
            
        }
        .frame(width: 200, height: 60)
        .background(.cyan)
        .cornerRadius(20)
        .overlay(
            RoundedRectangle(cornerRadius: 20)
                .stroke(.black, lineWidth: 4)
        )
    }
}

struct LogOutButtonView_Previews: PreviewProvider {
    static var previews: some View {
        LogOutButtonView(action: {})
    }
}
