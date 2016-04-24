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
    @IBAction func btnPressed(sender: UIButton) {
        
        let digitPressed = sender.currentTitle
        
        let displayDigitCurrent = lblDisplayNumber!.text
        
        lblDisplayNumber?.text = displayDigitCurrent! + digitPressed!
        
        
        
        
       
    }
 }

