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
    
    

    //MARK:- REST CALLS
    func getTopHeadlines(completion: @escaping CompletionHandler){
     
        //https://newsapi.org/v2/top-headlines?country=us&apiKey=154a8c80de224a3e8fb5b3465bea89f0
        let requestTopHeadlines = "\(BASE_URL)top-headlines?country=us&apiKey=\(API_KEY)"
        
        Alamofire.request(requestTopHeadlines, method: .get, parameters: nil, encoding: JSONEncoding.default, headers: nil).responseJSON { (response) in
            
            if response.result.error == nil {
                guard let data = response.data else { return }
                let json : JSON = try! JSON(data: data)

                
                
                
                
                print(json as Any)
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
    
    
    
    
    
    
    
    
    
    
    
}
