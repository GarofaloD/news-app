//
//  NewsFetchingDataService.swift
//  news-app
//
//  Created by Daniel Garofalo on 3/29/19.
//  Copyright © 2019 Daniel Garofalo. All rights reserved.
//

import Foundation
import Alamofire
import SwiftyJSON

class NewsFetchingDataService {
    
    //MARK:- Singleton
    static let instance = NewsFetchingDataService()
    
    //MARK:- Properties
    let defaults = UserDefaults.standard
    var headlinesArray = [News]()
    
    

    //MARK:- REST CALLS
    func getTopHeadlines(completion: @escaping CompletionHandler){
     
        //https://newsapi.org/v2/top-headlines?country=us&apiKey=154a8c80de224a3e8fb5b3465bea89f0
        let requestTopHeadlines = "\(BASE_URL)top-headlines?country=us&apiKey=\(API_KEY)"
        
        Alamofire.request(requestTopHeadlines, method: .get, parameters: nil, encoding: JSONEncoding.default, headers: nil).responseJSON { (response) in
            
            if response.result.error == nil {
                guard let data = response.data else { return }
                let json : JSON = try! JSON(data: data)

                //guard let json = response.result.value as? Dictionary<String,AnyObject> else { return }
                let articlesFromJSON = json["articles"]
                //let articles = articlesFromJSON[0]["url"]
                //let photosDictArray = photosDict?["photo"] as! [Dictionary<String,AnyObject>]
                
                for (_ ,news):(String, JSON) in articlesFromJSON {
                    
                    let title = news["title"].stringValue
                    let url = news["url"].stringValue
                    let author = news["author"].stringValue
                    let content = news["content"].stringValue
                    let description = news["description"].stringValue
                    let source = news["source"]["name"].stringValue
                    let image = news["urlToImage"].stringValue
                    let timeStamp = news["publishedAt"].stringValue
                    
                    let newsItem = News(url: url, source: source, author: author, timeStamp: timeStamp, title: title, description: description, content: content, image: image)
                    self.headlinesArray.append(newsItem)
                }
                
                print(self.headlinesArray)
                //print(articlesFromJSON as Any)
                completion(true)
            } else {
                completion(false)
                debugPrint(response.result.error as Any)
                print("Call did not go through")
            }
            
            
        }
    }
    
    
    
    
    
    
    func getNewsByCategory(){
        
    }
    
    func getNewsBySearchTerm(){
        
    }
    
    
    func getHeadlines() -> [News]{
        return headlinesArray
    }
    
    
    
    
    
    
    
    
}
