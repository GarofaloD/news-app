//
//  SearchNewsViewController.swift
//  news-app
//
//  Created by Daniel Garofalo on 3/29/19.
//  Copyright © 2019 Daniel Garofalo. All rights reserved.
//

import UIKit

class SearchNewsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    

    //MARK:- Outlets
    @IBOutlet weak var searchField: UITextField!
    @IBOutlet weak var tableView: UITableView!
    
    
    
    
    //MARK:- Properties
    
    
    
    
    //MARK:- Load Up Functions
    override func viewDidLoad() {
        super.viewDidLoad()

        //Tableview Load
        tableView.dataSource = self
        tableView.delegate = self
        
    
    }
    
    //MARK:- Buttons
    @IBAction func backToNewsBrowseWhenPressed(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func goToAppMenuWhenPressed(_ sender: UIButton) {
    }
    
    
    
    
    
    //MARK:- Table Functions
    //Number of rows?
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    //Content of rows?
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
    
    //MARK:- Custom Functions
    
    
    
    
        
        

}
