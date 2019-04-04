//
//  News.swift
//  news-app
//
//  Created by Daniel Garofalo on 4/4/19.
//  Copyright © 2019 Daniel Garofalo. All rights reserved.
//

import Foundation

struct News {
    
    private(set) public var newsURL : String
    private(set) public var newsSource : String
    private(set) public var newsAuthor : String
    private(set) public var newsTimeStamp : String
    private(set) public var newsTitle : String
    private(set) public var newsDescription : String
    private(set) public var newsContent : String
    private(set) public var newsImage : String
    
    init(url: String, source: String, author: String, timeStamp: String, title: String, description: String, content: String, image: String ) {
        
        self.newsURL = url
        self.newsSource = source
        self.newsAuthor = author
        self.newsTimeStamp = timeStamp
        self.newsTitle = title
        self.newsDescription = description
        self.newsContent = content
        self.newsImage = image
    }
    
    
}
