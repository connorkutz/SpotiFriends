//
//  LoginViewModel.swift
//  SpotiFriends
//
//  Created by Connor Kutz on 2/3/25.
//

import Foundation

class LoginViewModel: ObservableObject {
    @Published var username: String = ""
    @Published var password: String = ""
    
    // Placeholder login method; you'll add real logic later.
    func login() {
        print("Attempting login with username: \(username) and password: \(password)")
    }
}
