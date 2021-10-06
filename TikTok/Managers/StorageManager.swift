//
//  StorageManager.swift
//  TikTok
//
//  Created by Rajesh on 06/10/21.
//

import Foundation
import FirebaseStorage

final class StorageManager {
    
    public static let shared = StorageManager()
    
    private let storage = Storage.storage().reference()
    
    private init() {
        
    }
    
    // Public
    
    public func getVideoURL(with identifier: String, completion: (URL)) -> Void {
        
        
    }
    
    public func uploadVideoURL(from url: URL) {
        
    }
        
}
