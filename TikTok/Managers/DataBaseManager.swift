//
//  DataBaseManager.swift
//  TikTok
//
//  Created by Rajesh on 06/10/21.
//

import Foundation
import FirebaseDatabase

final class DataBaseManager {
    
    public static let shared = DataBaseManager()
    
    private let database = Database.database().reference()
    
    private init() {
        
    }
    
    // Public
    
    public func getAllUsers(completion: ([String])) -> Void {
        
        
    }
        
}
