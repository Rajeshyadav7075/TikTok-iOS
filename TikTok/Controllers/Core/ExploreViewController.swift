//
//  ExploreViewController.swift
//  TikTok
//
//  Created by Rajesh on 06/10/21.
//

import UIKit

struct ExploreSection {
    let type: ExploreSectionType
    let cells: [ExploreCell]
}

class ExploreViewController: UIViewController {

    private let searchBar: UISearchBar = {
        
        let bar = UISearchBar()
        
        bar.placeholder = "Search..."
        bar.layer.cornerRadius = 8
        bar.layer.masksToBounds = true
        
        return bar
    }()
    
    private var sections = [ExploreSection]()
    
    private var collectionView: UICollectionView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        configureModel()
        setUpSearchBar()
        setUpCollectionView()
    }

    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        collectionView?.frame = view.bounds
    }
    
    func setUpSearchBar() {
        
        navigationItem.titleView = searchBar
        searchBar.delegate = self
        
    }
    
    func configureModel() {
        
        var cells = [ExploreCell]()
        for _ in 0...100 {
            let cell = ExploreCell.banner(viewModel: ExploreBannerViewModel(imageView: nil, title: "Foo", handler: {
                //
            }))
            cells.append(cell)
        }
        
        sections.append(ExploreSection(type: .banners, cells: cells))
    }
    
    func setUpCollectionView() {
        
        let layout = UICollectionViewCompositionalLayout { section, _ -> NSCollectionLayoutSection? in
            
            return self.layout(for: section)
        }
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "cell")
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.backgroundColor = .black
    
        view.addSubview(collectionView)
        
        self.collectionView = collectionView
    }
    
    func layout(for section: Int) -> NSCollectionLayoutSection {
        
        let sectionType = sections[section].type
        
        switch sectionType {
        
            case .banners:
                break
            case .trendingPosts:
                break
            case .users:
                break
            case .trendingHashtags:
                break
            case .recommended:
                break
            case .popular:
                break
            case .new:
                break
            
        }
        
        //Item
        let item = NSCollectionLayoutItem(layoutSize: NSCollectionLayoutSize(widthDimension: .fractionalWidth(1), heightDimension: .fractionalHeight(1)))
        
        item.contentInsets = NSDirectionalEdgeInsets(top: 4, leading: 4, bottom: 4, trailing: 4 )
        //Group
        let group = NSCollectionLayoutGroup.horizontal(layoutSize: NSCollectionLayoutSize(widthDimension: .fractionalWidth(0.90), heightDimension: .absolute(200)), subitems: [item])
        
        //section layout
        let sectionLayout = NSCollectionLayoutSection(group: group)
        sectionLayout.orthogonalScrollingBehavior = .groupPaging
        
        // return
        
        return sectionLayout
    }
}

extension ExploreViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        
        return sections.count
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return sections[section].cells.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let model = sections[indexPath.section].cells[indexPath.row]
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath)
        
        cell.backgroundColor = .red
        
        return cell
    }
    
    
    
}


extension ExploreViewController: UISearchBarDelegate {
    
    
}
