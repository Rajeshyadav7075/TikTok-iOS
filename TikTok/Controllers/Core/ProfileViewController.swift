//
//  ProfileViewController.swift
//  TikTok
//
//  Created by Rajesh on 06/10/21.
//

import UIKit

class ProfileViewController: UIViewController {

    let user: User
    init(user: User) {
        
        self.user = user
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = user.userName.uppercased()
        
        view.backgroundColor = .systemBackground
    }
    
}
