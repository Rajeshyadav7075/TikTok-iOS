//
//  PostViewController.swift
//  TikTok
//
//  Created by Rajesh on 06/10/21.
//

import UIKit

class PostViewController: UIViewController {

    let model: PostModel
    
    init(model: PostModel) {
        
        self.model = model
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        let colors: [UIColor] = [.red, .gray, .green, .orange, .blue, .white]
        
        view.backgroundColor = colors.randomElement()
    }

}
