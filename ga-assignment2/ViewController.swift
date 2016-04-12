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
    @IBOutlet weak var lblReplace: UILabel!
    
    @IBAction func cmdAction(sender: AnyObject) {
        let value: Int = Int(txtAge.text!)!
        
        lblReplace.text = generate(value)
        
    }
    
    func generate(age: Int) -> String{
        if age >= 21 {
            return "You can drive, vote, drink (but not at the same time)"
        }
        else if age>=18{
            return "You can drive and vote"
        }
        else if age>=16{
            return "You can drive"
        }
        else{
            return ""
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

