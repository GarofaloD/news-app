//
//  NewsCell.swift
//  news-app
//
//  Created by Daniel Garofalo on 3/27/19.
//  Copyright © 2019 Daniel Garofalo. All rights reserved.
//

import UIKit

class NewsCell: UICollectionViewCell {
    
    //MARK:- Table Functions
    //MARK:- Load Up Functions
    //MARK:- Custom Functions
    //MARK:- Properties
    @IBOutlet weak var newsImage: UIImageView!
    @IBOutlet weak var newsTitle: UILabel!
    @IBOutlet weak var newsAuthor: UILabel!
    @IBOutlet weak var newsSource: UILabel!
    @IBOutlet weak var newsDate: UILabel!
    @IBOutlet weak var newsDescription: UILabel!
    
    func updateNewsCell(newsItem: News) {
        newsImage.image = UIImage(named: newsItem.newsImage)
        newsTitle.text = newsItem.newsTitle
        newsDescription.text = newsItem.newsDescription
        newsDate.text = newsItem.newsTimeStamp
        newsAuthor.text = newsItem.newsAuthor
        newsSource.text = newsItem.newsSource
    }
    
    
    
    
    
    //MARK:- Outlets
    //MARK:- Buttons
    
    
    
    
    
}
