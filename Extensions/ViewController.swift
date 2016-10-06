//
//  ViewController.swift
//  Extensions
//
//  Created by Flatiron School on 6/30/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var unicornLevelLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let fullName = "Jhantelle Belleza"
        let phoneNumber: Int = 8675309
        print(fullName, phoneNumber)
        print(fullName.whisper(), fullName.shout(), fullName.pigLatin, fullName.points)
        print(phoneNumber.half(), phoneNumber.isDivisible(by: 5),phoneNumber.squared, phoneNumber.halved)
        
        unicornLevelLabel.text = fullName.unicornLevel
        
        
        // Do any additional setup after loading the view, typically from a nib.
        
    }
}


