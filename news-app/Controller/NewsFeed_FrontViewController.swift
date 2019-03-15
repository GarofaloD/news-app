//
//  NewsFeed_FrontViewController.swift
//  news-app
//
//  Created by Daniel Garofalo on 3/15/19.
//  Copyright © 2019 Daniel Garofalo. All rights reserved.
//

import UIKit

class NewsFeed_FrontViewController: UIViewController {

    //MARK:- OUTLETS
    @IBOutlet weak var menuButton: UIButton!
    
    
    //MARK:- PROPERTIES
    
    
    
    //MARK:- LOAD UP FUNCTIONS

    override func viewDidLoad() {
        super.viewDidLoad()

        //Reveal rear view controller
        menuButton.addTarget(self.revealViewController(), action: #selector(SWRevealViewController.revealToggle(_:)), for: .touchUpInside)
        
        //
        self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        self.view.addGestureRecognizer(self.revealViewController().tapGestureRecognizer())
        
        
        
        
    }
    



}
