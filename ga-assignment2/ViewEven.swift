//
//  ViewEven.swift
//  ga-assignment2
//
//  Created by Tommy Susanto on 12/04/2016.
//  Copyright © 2016 Tommy Susanto. All rights reserved.
//

import Foundation
import UIKit

class ViewEven: UIViewController {
    
    @IBOutlet weak var txtNumber: UITextField!
    @IBOutlet weak var lblResult: UILabel!
    
    
    @IBAction func cmdCalculate(sender: AnyObject) {
        
        
        // This tests if Texfield contains valid integer
        if let validInt = Int(txtNumber.text!)
        {
            if validInt % 2 == 0 {
                lblResult.text = "It's even"
            }
            else{
                lblResult.text = "It's odd"
            }
        }
        else {
            //Display this error message otherwise
            let alert = UIAlertController(title: "Error", message: "Please enter a valid number (Integer)", preferredStyle: UIAlertControllerStyle.Alert)
            alert.addAction(UIAlertAction(title: "Close", style: UIAlertActionStyle.Default, handler: nil))
            self.presentViewController(alert, animated: true, completion: nil)
        }
        
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

