//
//  ViewController.swift
//  Dealer
//
//  Created by Gonzalo Caballero on 7/15/16.
//  Copyright © 2016 Gonzalo Caballero. All rights reserved.
//

import UIKit

class ViewController: UITabBarController {

    var nameOfCompany = ""
    var nameOfPlayer = ""
    var isFirsTime = true
    
    let defaults = NSUserDefaults.standardUserDefaults()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        

    }
    
    override func viewDidAppear(animated: Bool) {
        
        isFirsTime = defaults.boolForKey("FirstTime")
        //Es Bool esta dado vuelta porque me da paja cambiar los Defaults
        if isFirsTime == false {
            self.performSegueWithIdentifier("firsTime", sender: self)
            print("Loading Welcome Screen")
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

