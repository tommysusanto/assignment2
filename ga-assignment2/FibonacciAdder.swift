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
            let res: String = String(fibonacciNumberAtIndex(Int(validInt)))
            lblResult.text = res
        }
        else {
            let alert = UIAlertController(title: "Error", message: "Please enter a valid number (Integer)", preferredStyle: UIAlertControllerStyle.Alert)
            alert.addAction(UIAlertAction(title: "Close", style: UIAlertActionStyle.Default, handler: nil))
            self.presentViewController(alert, animated: true, completion: nil)
        }


    }
    
    
    //Fibonacci Function
    func fibonacciNumberAtIndex(indexOfFibonacciNumber:Int) -> Int {
        
        var fibNum = indexOfFibonacciNumber, current = 0, next = 1, result = 0
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

