//
//  NewsFeed_FrontViewController.swift
//  news-app
//
//  Created by Daniel Garofalo on 3/15/19.
//  Copyright © 2019 Daniel Garofalo. All rights reserved.
//

import UIKit

class NewsFeed_FrontViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {

    

    //MARK:- OUTLETS
    @IBOutlet weak var menuButton: UIButton!
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var newsImage: UIImageView!
    @IBOutlet weak var newsTitle: UILabel!
    @IBOutlet weak var newsAuthor: UILabel!
    @IBOutlet weak var newsSource: UILabel!
    @IBOutlet weak var newsDate: UILabel!
    @IBOutlet weak var newsDescription: UILabel!
    
    
    //MARK:- PROPERTIES
    
    
    
    //MARK:- LOAD UP FUNCTIONS

    override func viewDidLoad() {
        super.viewDidLoad()

        //Reveal rear view controller
        menuButton.addTarget(self.revealViewController(), action: #selector(SWRevealViewController.revealToggle(_:)), for: .touchUpInside)
        //Gesture manager for slide VC
        self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        self.view.addGestureRecognizer(self.revealViewController().tapGestureRecognizer())
        
        //CollectionView Load
        collectionView.dataSource = self
        collectionView.delegate = self
        
        
        NewsFetchingDataService.instance.getTopHeadlines { (success) in
            if success {
                
            } else {
                
            }
        }
        
        
        
        
        
        
    }
    


    //MARK:- Collection View Functions
    //Number of items
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return NewsFetchingDataService.instance.getHeadlines().count
    }
    
    //Content of Items
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "newsCell", for: indexPath) as? NewsCell {
            let newsToDisplay = NewsFetchingDataService.instance.getHeadlines()[indexPath.row]
            cell.updateNewsCell(newsItem: newsToDisplay)
            return cell
        } else {
            return UICollectionViewCell()
        }
        
        
        
        

    }
    
    
    
    
    



    

}
