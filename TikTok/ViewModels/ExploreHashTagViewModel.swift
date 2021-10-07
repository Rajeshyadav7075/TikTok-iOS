//
//  ExploreHashTagViewModel.swift
//  TikTok
//
//  Created by Rajesh on 07/10/21.
//

import Foundation
import UIKit

struct ExploreHashTagViewModel {
    
    let text: String
    let icon: UIImage?
    let count: Int // no.of post associated with hashtag
    let handler: (() -> Void)
}
