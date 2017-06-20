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

    

    
    var emojiArray : [Emoji] = []                   // create an array of type Emoji class.
    var testStringArray : [String] = []             // syntax for creating an empty array. Must specify the type.
    
    override func viewDidLoad() { // any code inside of this function will get run the first time we open up our app.
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tableView.dataSource = self //once the view loads, we'll set the dataSource and delegate to self. Why?
        tableView.delegate = self
        
        
        emojiArray = makeEmojiArray()           // set emojiArray to makeEmojiArray() function, which returns an array
    }
    
    /********************************************************
    *
    *
    ********************************************************/
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // how many rows/cells in our table view?
        return emojiArray.count
    }
    
    
    /********************************************************
     *
     * What's in each row/cell.
     ********************************************************/
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // what do we want in each row/cell in the table view?
        
        print(indexPath.row)
        
        let cell = UITableViewCell() // what does this do?
        
        // cell.textLabel?.text = "What's up, Adly? 💯😍"
        
        let emoji = emojiArray[indexPath.row]
        
        cell.textLabel?.text = emoji.symbol
        
        return cell // return each cell.
    }
    
    
    
    
    /********************************************************
     * 
     * DON'T CHOOSE DIDDESELECTROWAT
     * As soon as you select something, something will happen.
     ********************************************************/
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        // code to make segue happen
        
        tableView.deselectRow(at: indexPath, animated: true)                        // unhighlight each user selection.
        
        let emoji = emojiArray[indexPath.row] // make an array of emoji objects.
        performSegue(withIdentifier: "moveSegue", sender: emoji)
        
    }
    
    /********************************************************
     *
     *
     ********************************************************/
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // access to next view controller:
        
        let emojiVC = segue.destination as! EmojiViewController
        emojiVC.emoji = sender as! Emoji                        // the sender of the segue is an Emoji-class type.
    }
    
    
    /********************************************************
     *
     *
     ********************************************************/
    func makeEmojiArray() -> [Emoji] {
        
        // var emojiArray = [ "😍", "☺️", "😤", "😱", "🐯", "🐈", "🎃", "🌶", "🏕", "🗻", "🚀", "🚉" ]
        var emojiArrayCopy = [ "😍", "☺️" ]
        var categories = [
            "Smiley",
            "Animals",
            "Food",
            "Places",
            "Transportation",
            "Miscellaneous"
        ]
        
        let emoji1 = Emoji()                                // let emoji1 be an Emoji Object. How you declare objects.
        emoji1.symbol = "😍"
        emoji1.birthYear = 2009
        emoji1.definition = "A smiley with heart eyes"
        emoji1.category = categories[0]
        
        let emoji2 = Emoji()
        emoji2.symbol = emojiArrayCopy[1]
        emoji2.birthYear = 2009
        emoji2.definition = "A happy and blushing smiley"
        emoji2.category = categories[0]
        
        return [emoji1, emoji2]
        
    }
    
    
    
    
    
    
    /********************************************************
     *
     *
     ********************************************************/
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    
    
    
    
    
    
    
    
    
    
} // end class.



/*          
 
                    *************NOTES*************
 
 
 
 1. Add another viewController in Main.storyboard
 
 2. Add a whatever content you want to be shown on that next screen.
 
 3. From the first viewController (or starting viewController) click on it,
 then on the top there should be a yellow circle icon that says "View Controller".
 
 4. Control-click on the icon and drag that line to the second viewController (or ending viewController)
 
 5. add the following function in your viewController.swift code somewhere: func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) { }
    // DO NOT CHOOSE didDeselectRowAt... Not at this time.
 
 6. Inside the function "func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) { }", call the function performSegue(withIdentifier: "moveSegue", sender: "🙀").
 
 7. This function will perform the segue by travelling the segue we control-click
    dragged. The name of the segue is the name we give it when we select the segue
    and give it a name in the attribute inspector (in Main.storyboard)
 
 8. To add the Navigation controller at top of viewControllers, we select the first viewController, click the viewController icon, go to "Editor" at top of computer screen, select "Embed In", then select "Navigation Controller".
 
    *                                                                            *
    * Make sure to change the segue kind from Present Modally to Show (e.g. Push)*
    *                                                                            *
 
 9. Now we have a back button after we select anything.
 
 
 10. In our function to determine what's in each row (tableView, didSelectRowAt etc...),
     we added the following lines of code: 
    let emoji = emojiArray[indexPath.row]
    performSegue(withIdentifier: "moveSegue", sender: emoji) // see items 6 and 7.
 
 11. Added a new file to the Emoji Dictionary folder.
        - File is a Cocoa Touch File, called it EmojiViewController
        - Give it a subclass name also
        - Creates a new swift file called EmojiViewController.swift.
 
 12. In Main.storyboard, select the viewController to be linked to our new class file.
        - select the viewController yellow button at top. It should say "Emoji View Controller"
        - Click the identity inspector, and in custom class start typing EmojiViewController. Should recognize it already.
        - Module text box should recognize it as "Current - Emoji Dictionary"

 
 

 
 */
