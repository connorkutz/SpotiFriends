//
//  LoginView.swift
//  SpotiFriends
//
//  Created by Connor Kutz on 2/3/25.
//

import SwiftUI

struct LoginView: View {
    // Using @StateObject to instantiate the view model
    @StateObject private var viewModel = LoginViewModel()
    
    var body: some View {
        VStack(spacing: 20) {
            Text("Welcome Back")
                .font(.largeTitle)
                .padding(.bottom, 20)
            
            // Username TextField
            TextField("Username", text: $viewModel.username)
                .autocapitalization(.none)
                .disableAutocorrection(true)
                .padding()
                .background(Color(UIColor.systemGray6))
                .cornerRadius(8)
                .padding(.horizontal)
            
            // Password SecureField
            SecureField("Password", text: $viewModel.password)
                .padding()
                .background(Color(UIColor.systemGray6))
                .cornerRadius(8)
                .padding(.horizontal)
            
            // Login Button
            Button(action: {
                viewModel.login()
            }) {
                Text("Login")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.blue)
                    .cornerRadius(8)
                    .padding(.horizontal)
            }
            
            Spacer()
        }
        .padding(.top, 50)
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
