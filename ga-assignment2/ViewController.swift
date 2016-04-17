//
//  ViewController.swift
//  ga-assignment2
//
//  Created by Tommy Susanto on 12/04/2016.
//  Copyright © 2016 Tommy Susanto. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtName: UITextField!
    @IBOutlet weak var txtAge: UITextField!
    @IBOutlet weak var lblText: UILabel!
    @IBAction func cmdAction(sender: AnyObject) {
        

            // This tests if Texfield contains valid integer
            if let validInt = Int(txtAge.text!){
                lblText.text = part4(validInt)
                lblHello.text = "Hello \(txtName.text!), you are \(validInt) years old!"
            }
            else {
                //Display this error message otherwise
                let alert = UIAlertController(title: "Error", message: "Please enter a valid name", preferredStyle: UIAlertControllerStyle.Alert)
                alert.addAction(UIAlertAction(title: "Close", style: UIAlertActionStyle.Default, handler: nil))
                self.presentViewController(alert, animated: true, completion: nil)
            }
        
    }
    @IBOutlet weak var lblHello: UILabel!
    
    //This is part4 of the assignment. This functions is connected to the Generate Text Button
    func part4(age: Int) -> String{
        if age >= 21 {
            return "You can drive, vote, drink (but not at the same time)"
        }
        else if age>=18{
            return "You can drive and vote"
        }
        else if age>=16{
            return "You can drive"
        }
        else if age > 0{
            return "You are underaged"
        }
        else{
            //Display this error message for invalid input
            let alert = UIAlertController(title: "Error", message: "Please enter a valid age (Positive Integer > 0)", preferredStyle: UIAlertControllerStyle.Alert)
            alert.addAction(UIAlertAction(title: "Close", style: UIAlertActionStyle.Default, handler: nil))
            self.presentViewController(alert, animated: true, completion: nil)
            return ""
        }
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       
        self.navigationController?.navigationBar.barTintColor = UIColor(red: 255/255, green: 41/255, blue: 67/255, alpha: 1)
        self.navigationController?.navigationBar.tintColor = UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 1)
        self.navigationController?.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName: UIColor.init(red: 255/255, green: 255/255, blue: 255.255, alpha: 1)]
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

