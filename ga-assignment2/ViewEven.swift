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
        
        if Int(txtNumber.text!)! % 2 == 0 {
            lblResult.text = "Even"
        }
        else{
            lblResult.text = "Odd"
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

