//
//  ExploreUserViewModel.swift
//  TikTok
//
//  Created by Rajesh on 07/10/21.
//

import Foundation
import UIKit

struct ExploreUserViewModel {
    
    let profilePicture: URL?
    let userName: String
    let followerCount: Int
    let followingCount: Int
    let handler: (() -> Void)
}

