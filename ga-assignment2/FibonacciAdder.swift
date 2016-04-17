//
//  FibonacciAdder.swift
//  ga-assignment2
//
//  Created by Tommy Susanto on 14/04/2016.
//  Copyright © 2016 Tommy Susanto. All rights reserved.
//

import Foundation
import UIKit


class FibonacciAdder: UIViewController {
    
    @IBOutlet weak var txtNumber: UITextField!
    @IBOutlet weak var lblResult: UILabel!
    
    @IBAction func cmdClick(sender: AnyObject) {
        
        // This tests if Texfield contains valid integer
        if let validInt = Int(txtNumber.text!){
            
            // Formatting Double number to look like an integer (without decimal points)
            let res: String = String(format: "%.0f",fibonacciNumberAtIndex(Int(validInt)))
            lblResult.text = res
        }
        else {
            //Display this error message otherwise
            let alert = UIAlertController(title: "Error", message: "Please enter a valid number (Integer)", preferredStyle: UIAlertControllerStyle.Alert)
            alert.addAction(UIAlertAction(title: "Close", style: UIAlertActionStyle.Default, handler: nil))
            self.presentViewController(alert, animated: true, completion: nil)
        }


    }
    
    
    //Fibonacci Function (return value is Double because Int can't handle large numbers
    func fibonacciNumberAtIndex(indexOfFibonacciNumber:Int) -> Double {
        
        var fibNum = indexOfFibonacciNumber, current:Double = 0, next:Double = 1, result:Double = 0
        for _ in 0...fibNum {
            //current val is 3
            //temp value becomes 3
            let tempVar = current
            //current value becomes next(5)
            current = next
            //next value becomes old current(temporoary) + new current(old next)
            next = tempVar + current
            result = tempVar
        }
        
        return result

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

