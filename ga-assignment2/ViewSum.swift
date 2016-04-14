//
//  ViewSum.swift
//  ga-assignment2
//
//  Created by Tommy Susanto on 12/04/2016.
//  Copyright © 2016 Tommy Susanto. All rights reserved.
//

import Foundation
import UIKit

class ViewSum: UIViewController {
    
    @IBOutlet weak var txtNumber: UITextField!
    @IBOutlet weak var lblValue: UILabel!
    var sum: Int = 0
    
    @IBAction func cmdAction(sender: AnyObject) {
        
            // This tests if Texfield contains valid integer
            if let validInt = Int(txtNumber.text!){
                addition(Int(validInt))
                lblValue.text=String(sum)
            } else {
                let alert = UIAlertController(title: "Error", message: "Please enter a valid number (Integer)", preferredStyle: UIAlertControllerStyle.Alert)
                alert.addAction(UIAlertAction(title: "Close", style: UIAlertActionStyle.Default, handler: nil))
                self.presentViewController(alert, animated: true, completion: nil)
            }
        
            
        
    }
    
    func addition (input: Int) {
        sum += input
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lblValue.text = String(sum)
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

