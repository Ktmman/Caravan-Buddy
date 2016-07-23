//
//  ViewController.swift
//  Caravan Buddy
//
//  Created by Craig on 17/07/2016.
//  Copyright © 2016 Craig. All rights reserved.
//

    import UIKit
    var event = [String]()
    var myString : String?
    var userData = false

    class ViewController: UIViewController, UITableViewDelegate {

        @IBOutlet weak var textField: UITextField!
        
    @IBAction func buttonDoneAction(sender: AnyObject) {
            
            dismissViewControllerAnimated(true, completion: nil)
    }

    
    @IBOutlet weak var tblCalendar: UITableView!
        
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
  
        
        //print("This is the stuff \(event)")
    return event.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
    let cell = UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier:nil)
    cell.textLabel?.text = event[indexPath.row]
    
        return cell
    cell.textLabel?.numberOfLines = 0
       
        }

    override func viewDidAppear(animated: Bool) {
            tblCalendar.reloadData()

        }
        

    override func viewDidLoad() {
        super.viewDidLoad()
      
   userData = NSUserDefaults.standardUserDefaults().boolForKey("userData")
        
        if userData == true {
        event = NSUserDefaults.standardUserDefaults().objectForKey("theEvent") as! [String]
            
        
    }
        else {
            event.append("NO USER DATA")

    NSUserDefaults.standardUserDefaults().setObject(event, forKey: "theEvent")
            
        if event[0] == "NO USER DATA" {
            event.removeAtIndex(0)
            NSUserDefaults.standardUserDefaults().setObject(event, forKey: "theEvent")
            
            
        }
        
        
        }
        
    tblCalendar.reloadData()
        
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }

        func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath){
           
            if editingStyle == UITableViewCellEditingStyle.Delete {
                event.removeAtIndex(indexPath.row)
                NSUserDefaults.standardUserDefaults().setObject(event, forKey: "theEvent")
                }
            tblCalendar.reloadData()
            
        }
        // TRYING TO FIGURE OUT HOW TO GET THE DATA FROM THE ROW WHEN SELECTED
    
            func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
            let cell = tableView.cellForRowAtIndexPath(indexPath)
            let text = cell?.textLabel?.text
            //if let text = text {
            //print("did select and the text is \(text)")
            
                
                
                
            //textField.text = text
                
            //var dateselected = text
            //var newdate : String
            
            let test = text!
                
            let dateSelected = test.componentsSeparatedByString("..")
         
            textField.text = dateSelected[0]

                
                
                
                
        
        }
        
        
        

        
        


        
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}



