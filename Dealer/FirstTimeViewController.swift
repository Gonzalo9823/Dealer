//
//  FirstTimeViewController.swift
//  Dealer
//
//  Created by Gonzalo Caballero on 7/15/16.
//  Copyright © 2016 Gonzalo Caballero. All rights reserved.
//

import UIKit
import CoreData

class FirstTimeViewController: UIViewController {

    @IBOutlet weak var playerNameOfCompany: UITextField!
    @IBOutlet weak var playerStreetName: UITextField!
    
    @IBOutlet weak var error: UILabel!
    
    var nameOfCompany = ""
    var nameOfPlayer = ""
    
    let defaults = NSUserDefaults.standardUserDefaults()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
   
    
    @IBAction func startGame(sender: AnyObject) {
        
        if playerNameOfCompany.text! != "" || playerStreetName.text! != "" {
            
            PlayerInfo.shareInstance.addPlayer(playerStreetName.text!, company: playerNameOfCompany.text!)
            self.dismissViewControllerAnimated(true, completion: {})
            print("Apretado")
            defaults.setBool(true, forKey: "FirstTime")
        }
        
        else {
            error.hidden = false
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }    
}






























