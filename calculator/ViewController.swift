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
    var mOperandStack = Array<Double>()
    
    var mDisplayValue: Double {
        get {
            return NSNumberFormatter().numberFromString(mDisplay.text!)!.doubleValue
        }
        set {
            mDisplay.text = "\(newValue)"
            mTypingANumber = false
        }
    }
    
    @IBAction func appendDigit(sender: UIButton) {
        
        // Current button that was pushed...
        let currentDigit = sender.currentTitle!
        println("Current Digit is: \(currentDigit)")
        
        // Currently typing -> append digit.
        if mTypingANumber {
            mDisplay.text! = mDisplay.text! + currentDigit
        } else {
            // First digit -> display the current digit.
            mDisplay.text! = currentDigit
            mTypingANumber = true
        }
    }
    
    @IBAction func operate(sender: UIButton) {
    }
    
    @IBAction func pushEnter(sender: UIButton) {
        println("Enter Pressed: \(sender.currentTitle!)")
        
        // Done typing a number. Push onto stack.
        mTypingANumber = false
        mOperandStack.append(mDisplayValue)
        
        // Print current stack...
        println("Operands: \(mOperandStack)")
    }
}

