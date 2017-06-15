//
//  ViewController.swift
//  Emoji Dictionary
//
//  Created by Adly Thebaud on 6/15/17.
//  Copyright © 2017 ThebaudHouse. All rights reserved.
//  View Controlleeeerrrrrrrrr

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableView: UITableView! // table view needs to know how many things to go inside tableview, and what should go inside each row.
    
    
    var emojiArray = [ "😍", "☺️", "😤", "😱", "💩", "🐯", "🐈", "🎃", "🌶", "🏕", "🗻", "🚀", "🚉" ]
    
    
    override func viewDidLoad() { // any code inside of this function will get run the first time we open up our app.
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tableView.dataSource = self
        tableView.delegate = self
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // how many rows/cells in our table view?
        return emojiArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // what do we want in each row/cell in the table view?
        
        print(indexPath.row)
        // print(indexPath)
        let cell = UITableViewCell() // what does this do?
        // cell.textLabel?.text = "What's up, Adly? 💯😍"
        cell.textLabel?.text = emojiArray[indexPath.row]
        return cell // what are we returning?
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    
    
    
    
    
    
    
    
    
    
} // end class.

