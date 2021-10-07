//
//  ExplorePostViewModel.swift
//  TikTok
//
//  Created by Rajesh on 07/10/21.
//

import Foundation
import UIKit

struct ExplorePostViewModel {
    
    let thumbnailImage: UIImage?
    let Caption: String
    let handler: (() -> Void)
}
