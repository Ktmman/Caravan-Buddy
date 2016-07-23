//
//  VCMAINMENU.swift
//  Caravan Buddy
//
//  Created by Craig on 19/07/2016.
//  Copyright © 2016 Craig. All rights reserved.
//

import UIKit

class VCMAINMENU: UIViewController {

    @IBAction func infoButton(sender: AnyObject) {
        let alert = UIAlertController(title: "Information", message: "Welcome to Caravan Buddy.. Being an owner of a Caravan, I wanted a simple way to store a record of things that I have done to my Caravan, so I produced this simple App to assist in keeping a record of repairs and checks that have done to your Caravan. Have fun !", preferredStyle:.Alert)
        let cancel = UIAlertAction(title: "Done", style:
            UIAlertActionStyle.Cancel, handler: nil)
        alert.addAction(cancel)
        self .presentViewController(alert, animated: true,completion: nil)
        
        
        
        
        
        
    }
}
