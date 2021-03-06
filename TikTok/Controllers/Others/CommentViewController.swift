//
//  CommentViewController.swift
//  TikTok
//
//  Created by Rajesh on 06/10/21.
//

import UIKit

protocol CommentViewControllerDelegate: AnyObject {
    
    func didTapCloseForComments(with viewController: CommentViewController)
}

class CommentViewController: UIViewController {
    
    
    weak var delegate: CommentViewControllerDelegate?
    
    private let tableView: UITableView = {
        
        let tableView = UITableView()
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        tableView.register(CommentsTableViewCell.self, forCellReuseIdentifier: CommentsTableViewCell.identifier)
        
        return tableView
    }()
    
    private let post: PostModel
    
    private var comments = [PostComment]()
    
    private let closeButton: UIButton = {
       
        let button = UIButton()
        button.setBackgroundImage(UIImage(systemName: "xmark"), for: .normal)
        button.tintColor = .black
        
        return button
    }()

    init(post: PostModel) {
        
        self.post = post
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.addSubview(closeButton)
        closeButton.addTarget(self, action: #selector(didTapClose), for: .touchUpInside)
        view.backgroundColor = .white
        fetchPostComments()
        
        view.addSubview(tableView)
        tableView.dataSource = self
        tableView.delegate = self
    }
    
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        closeButton.frame = CGRect(x: view.width - 45, y: 10, width: 35, height: 35)
        
        tableView.frame = CGRect(x: 0, y: closeButton.bottom, width: view.width, height: view.width - closeButton.bottom)
    }
    
    func fetchPostComments() {
        
        // DataBaseManager.shared.fetchComments
        
        self.comments = PostComment.mockComments()
    }
    
    @objc func didTapClose() {
        delegate?.didTapCloseForComments(with: self)
    }
}


extension CommentViewController: UITableViewDelegate,UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return comments.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let comment = comments[indexPath.row]
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: CommentsTableViewCell.identifier, for: indexPath) as? CommentsTableViewCell
        else {
            return UITableViewCell()
        }
        
        cell.configuration(with: comment)
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        return 80
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        tableView.deselectRow(at: indexPath, animated: true)
    }
}
