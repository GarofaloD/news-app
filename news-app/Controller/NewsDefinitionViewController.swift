//
//  NewsDefinitionViewController.swift
//  news-app
//
//  Created by Daniel Garofalo on 3/29/19.
//  Copyright © 2019 Daniel Garofalo. All rights reserved.
//

import UIKit

class NewsDefinitionViewController: UIViewController {

    //MARK:- Outlets
    @IBOutlet weak var newsImage: UIImageView!
    @IBOutlet weak var newsTitle: UILabel!
    @IBOutlet weak var newsAuthor: UILabel!
    @IBOutlet weak var newsSource: UILabel!
    @IBOutlet weak var newsDate: UILabel!
    @IBOutlet weak var newsContent: UILabel!
    
    
    //MARK:- Properties
    
    
    
    
    
    
    //MARK:- Load Up Functions
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    

    
    
    
    
    //MARK:- Table Functions
    
    

    
    
    
    //MARK:- Buttons
    //Back Button
    @IBAction func backToNewsBrowseWhenPressed(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
    //Menu Button
    @IBAction func goToAppMenuWhenPressed(_ sender: UIButton) {
    }
    
    
    //MARK:- Custom Functions
    
    
    
}
