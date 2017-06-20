//
//  EmojiViewController.swift
//  Emoji Dictionary
//
//  Created by Adly Thebaud on 6/16/17.
//  Copyright © 2017 ThebaudHouse. All rights reserved.
//

import UIKit

class EmojiViewController: UIViewController {

    
    @IBOutlet weak var emojiLabel: UILabel!
    
    @IBOutlet weak var defLabel: UILabel!
    
    @IBOutlet weak var categoryLabel: UILabel!
   
    @IBOutlet weak var birthyearLabel: UILabel!
   
    var emoji = Emoji()
    
    var def = "NO DEF"
    
    var emojiDefArray = [
        "Smiley with heart eyes",
        "Blushing happy face"
    ]
    
    var emojiArray = [ "😍", "☺️", "😤", "😱", "🐯", "🐈", "🎃", "🌶", "🏕", "🗻", "🚀", "🚉" ]
   
    override func viewDidLoad() {
        super.viewDidLoad()

        
        emojiLabel.text = emoji.symbol
        
        // loop through emojiArray (0 to (emojiArray.count - 1)). If emoji = emojiArray[i], defLabel.text = emojiDefArray[i].
        
//        for i in 0...(emojiArray.count - 1) {
//            if emoji == emojiArray[i] {
//                defLabel.text = emojiDefArray[i]
//            }
//        }
        defLabel.text = "Definition: \(emoji.definition)"
        categoryLabel.text = "Category: \(emoji.category)"
        birthyearLabel.text = "Origination Date: \(emoji.birthYear)"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    

} // END CLASS.
