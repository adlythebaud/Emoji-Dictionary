//
//  EmojiViewController.swift
//  Emoji Dictionary
//
//  Created by Adly Thebaud on 6/16/17.
//  Copyright © 2017 ThebaudHouse. All rights reserved.
//

import UIKit

class EmojiViewController: UIViewController {

    var emoji = "NO EMOJI"
    var def = "NO DEF"
    
    var emojiDefArray = [
        "Smiley with heart eyes",
        "Blushing happy face",
        "Stressed smiley with steam coming out nose",
        "Shock and awe face",
        "Tiger emoji",
        "Cat emoji",
        "Jack-O-Lantern",
        "Hot chili pepper",
        "Camping emoji",
        "Mountain top emoji",
        "Space ship emoji",
        "Train emoji"
    ]
    
    var emojiArray = [ "😍", "☺️", "😤", "😱", "🐯", "🐈", "🎃", "🌶", "🏕", "🗻", "🚀", "🚉" ]
    
    @IBOutlet weak var emojiLabel: UILabel!
    
    @IBOutlet weak var defLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        emojiLabel.text = emoji
        
        // loop through emojiArray (0 to (emojiArray.count - 1)). If emoji = emojiArray[i], defLabel.text = emojiDefArray[i].
        
        for i in 0...(emojiArray.count - 1) {
            if emoji == emojiArray[i] {
                defLabel.text = emojiDefArray[i]
            }
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    

} // END CLASS.
