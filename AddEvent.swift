//
//  AddEvent.swift
//  Caravan Buddy
//
//  Created by Craig on 17/07/2016.
//  Copyright © 2016 Craig. All rights reserved.
//

    import UIKit
    class AddEvent: UIViewController {
    
    var thedate : String?
    
    @IBOutlet weak var dateTextField: UITextField!
        
    @IBAction func textFieldEditing(sender: UITextField) {
    let datePickerView:UIDatePicker = UIDatePicker()
        datePickerView.datePickerMode = UIDatePickerMode.Date
        sender.inputView = datePickerView
       datePickerView.addTarget(self, action: #selector(AddEvent.datePickerValueChanged), forControlEvents: UIControlEvents.ValueChanged)
    }
   func datePickerValueChanged(sender:UIDatePicker) {
       let dateFormatter = NSDateFormatter()
       dateFormatter.dateStyle = NSDateFormatterStyle.MediumStyle
       dateFormatter.timeStyle = NSDateFormatterStyle.NoStyle
      dateTextField.text = dateFormatter.stringFromDate(sender.date)
    thedate = dateTextField.text!
        }
    @IBOutlet weak var txtEvent: UITextField!
    @IBAction func btnAddAction(sender: AnyObject) {
    
    var newvalue : String? = ""
    userData = true
    
    newvalue! += thedate!
    newvalue! += " "
    newvalue! += txtEvent.text!
    newvalue! += " ..... "
    newvalue! += "[Wheel Bearings = \(switch1)] "
    newvalue! += " [Water Leaks = \(switch2)] "
    newvalue! += " "
    newvalue! += "[Water Pump = \(switch3)] "
    newvalue! += " "
    newvalue! += "[Windows etc = \(switch4)] "
    newvalue! += " "
    newvalue! += "[CupBoards etc = \(switch4)] "
    txtEvent.text = newvalue
        
        
    NSUserDefaults.standardUserDefaults().setObject(userData, forKey: "userData")
    
    if txtEvent.text == "" {
    // Alert User that you must enter data before Saving
    let alert = UIAlertController(title: "Details Required", message: "Cannot save... Please enter details if you wish to save your Entry.. Otherwise select Done to exit", preferredStyle:.Alert)
    let cancel = UIAlertAction(title: "Done", style:
                UIAlertActionStyle.Cancel, handler: nil)
            alert.addAction(cancel)
        self .presentViewController(alert, animated: true,completion: nil)
       
        //txtEvent.backgroundColor = UIColor.blueColor()
        }
        else {
       txtEvent.backgroundColor = UIColor.whiteColor()
        
        event.append(txtEvent.text!)
        NSUserDefaults.standardUserDefaults().setObject(event, forKey: "theEvent")
        
        // clear text field txtEvent so its ready for next entry
        
        txtEvent.text = ""
        // Alert User that there details have been saved
        let alert = UIAlertController(title: "Details Saved", message: "Your entry hase been saved. Select Done if finished.", preferredStyle:.Alert)
        let cancel = UIAlertAction(title: "Done", style:
            UIAlertActionStyle.Cancel, handler: nil)
        alert.addAction(cancel)
        self .presentViewController(alert, animated: true,completion: nil)
            
        }
    }
    
    @IBAction func buttonDoneAction(sender: AnyObject) {
        
    dismissViewControllerAnimated(true, completion: nil)
    }
 
    //Get Switch Value yes or no
    var switch1 = "no"
    @IBOutlet weak var switch1Outlet: UISwitch!
    @IBAction func switch1Action(sender:AnyObject) {if (switch1Outlet.on){
        switch1 = "yes"}
    else { switch1 = "no"}
    }
    
    var switch2 = "no"
    @IBOutlet weak var switch2Outlet: UISwitch!
    @IBAction func switch2Action(sender: AnyObject) {if (switch2Outlet.on){
        switch2 = "yes"}
    else { switch2 = "no"}
    }
    
    var switch3 = "no"
    @IBOutlet weak var switch3Outlet: UISwitch!
    @IBAction func switch3Action(sender: AnyObject) {if (switch3Outlet.on){ switch3 = "yes"}
            else { switch3 = "no"}
    }
    
    var switch4 = "no"
    @IBOutlet weak var switch4Outlet: UISwitch!
    @IBAction func switch4Action(sender: AnyObject) {if (switch4Outlet.on){ switch4 = "yes"}
    else { switch4 = "no"}
    }
    
    var switch5 = "no"
    @IBOutlet weak var switch5Outlet: UISwitch!
    @IBAction func switch5Action(sender: AnyObject) {if (switch5Outlet.on){ switch5 = "yes"}
    else { switch5 = "no"}
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

