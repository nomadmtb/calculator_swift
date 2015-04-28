//
//  ViewController.swift
//  calculator
//
//  Created by Kyle Luce on 4/27/15.
//  Copyright (c) 2015 Kyle Luce. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var mDisplay: UILabel!
    
    var mTypingANumber = false
    
    @IBAction func appendDigit(sender: UIButton) {
        
        // Current button that was pushed...
        let currentDigit = sender.currentTitle!
        
        // Currently typing -> append digit.
        if mTypingANumber {
            mDisplay.text! = mDisplay.text! + currentDigit
        } else {
            // Not currently typing set display to current digit.
            mDisplay.text! = currentDigit
            mTypingANumber = true
        }
        
        // Print the current button to console...
        println("Current button is \(currentDigit)")
        
    }
}

