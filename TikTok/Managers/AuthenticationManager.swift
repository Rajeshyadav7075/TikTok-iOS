//
//  AuthenticationManager.swift
//  TikTok
//
//  Created by Rajesh on 06/10/21.
//

import Foundation
import FirebaseAuth

final class AuthenticationManager {
    
    public static let shared = AuthenticationManager()
    
    private init() {
        
    }
    
    enum SignInMethod {
        case email
        case facebook
        case google
    }
    
    // Public
    
    public func signOut() {
        
    }
    
    public func signIn(with method: SignInMethod) {
        
    }
        
}
