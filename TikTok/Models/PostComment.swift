//
//  PostComment.swift
//  TikTok
//
//  Created by Rajesh on 06/10/21.
//

import Foundation

struct PostComment {
    
    let text: String
    let user: User
    let date: Date
    
    static func mockComments() -> [PostComment] {
        
        let user = User(userName: "Rajesh", profilePicURL: nil, identifier: UUID().uuidString)
        
        var comments = [PostComment]()
        
        let text = ["This is cool","This is hot","This is winter","This is cool"]
        
        for comment in text {
            
            comments.append(PostComment(text: comment, user: user, date: Date()))
        }
        
        return comments
    }
}
