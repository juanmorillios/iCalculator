//
//  ViewController.swift
//  iCalculator
//
//  Created by Juan Morillo on 24/4/16.
//  Copyright © 2016 JuanMorillios. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lblDisplayNumber: UILabel?
    
    var userIsTyping = false
    
    @IBAction func btnPressed(sender: UIButton) {
        
        let digitPressed = sender.currentTitle!
        
        if userIsTyping {
        
        let displayDigitCurrent = lblDisplayNumber!.text
        
        lblDisplayNumber?.text = displayDigitCurrent! + digitPressed
        
        } else{
        
        
            lblDisplayNumber?.text = digitPressed
        
        }
        
        userIsTyping = true
    }
    
    
    @IBAction func sqrBurronPressed(sender: UIButton) {
        
        userIsTyping = false
        
        
        if let typeOpetation = sender.currentTitle {
    
            if typeOpetation == "π" {
            
            lblDisplayNumber?.text = String(M_PI_2)
            
            }
        
        }
        
        
    }
    
    @IBAction func sumButtonPressed(sender: UIButton) {
        
        userIsTyping = false
        
        if let typeOpetaionSum = sender.currentTitle {
        
            if typeOpetaionSum == "+" {
            
                lblDisplayNumber?.text = "Sum is: \(sender.currentTitle!)"
            
            }
        
        }
        
        
    }
    
 }

