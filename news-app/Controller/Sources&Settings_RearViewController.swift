//
//  Sources&Settings_RearViewController.swift
//  news-app
//
//  Created by Daniel Garofalo on 3/15/19.
//  Copyright © 2019 Daniel Garofalo. All rights reserved.
//

import UIKit

class Sources_Settings_RearViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    

    //MARK:- Outlets
    @IBOutlet weak var tableView: UITableView!
    
    
    //MARK:- Properties
    
    
    
    
    
    
    //MARK:- LoadUp Functions
    override func viewDidLoad() {
        super.viewDidLoad()

        //TableView load
        tableView.delegate = self
        tableView.dataSource = self
        
        
        
        
        
        
    }
    
    
    //MARK:- TableView functions
    //Number of rows
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    //Content of rows
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
    

    //MARK:- Buttons
    @IBAction func settingsWhenPressed(_ sender: UIButton) {
    }
    
    
    
    
    
    

}
