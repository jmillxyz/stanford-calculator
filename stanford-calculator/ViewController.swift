//
//  ViewController.swift
//  stanford-calculator
//
//  Created by Jon Miller on 6/13/16.
//  Copyright © 2016 gallutron. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var display: UILabel!
    
    var userIsTyping = false
    
    @IBAction func touchDigit(sender: UIButton) {
        let digit = sender.currentTitle!
        if userIsTyping {
            let currentDisplayText = display.text!
            display.text = currentDisplayText + digit
        } else {
            display.text = digit
        }
        userIsTyping = true
    }
    
    @IBAction func performOperation(sender: UIButton) {
        userIsTyping = false
        if let mathSymbol = sender.currentTitle {
            if mathSymbol == "π" {
                display.text = String(M_PI)
            }
        }
    }
    
}
