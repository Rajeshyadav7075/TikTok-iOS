//
//  PostModel.swift
//  TikTok
//
//  Created by Rajesh on 06/10/21.
//

import Foundation

struct PostModel {
    
    let identifier: String
    
    let user = User(userName: "Rajesh", profilePicURL: nil, identifier: UUID().uuidString)
    
    var isLikedByCurrentUser = false
    
    static func mockModels() -> [PostModel] {
        
        var posts = [PostModel]()
        
        for _ in 0...100 {
            
            let post = PostModel(identifier: UUID().uuidString)
            posts.append(post)
            
        }
        
        return posts
    }
}
