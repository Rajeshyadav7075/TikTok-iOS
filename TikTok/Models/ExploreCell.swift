//
//  ExploreCell.swift
//  TikTok
//
//  Created by Rajesh on 07/10/21.
//

import Foundation
import UIKit

enum ExploreCell {
    case banner(viewModel: ExploreBannerViewModel)
    case post(viewModel: ExplorePostViewModel)
    case hastag(viewModel: ExploreHashTagViewModel)
    case user(viewModel: ExploreUserViewModel)
}
