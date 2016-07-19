//
//  ChangeNameViewController.swift
//  Dealer
//
//  Created by Gonzalo Caballero on 7/18/16.
//  Copyright © 2016 Gonzalo. All rights reserved.
//

import UIKit
import CoreData

class ChangeNameViewController: UIViewController {
    
    
    var currentName = ""
    var currentCompanyName = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        PlayerInfo.shareInstance.fetchPlayer()
        currentName = PlayerInfo.shareInstance.playerName
        currentCompanyName = PlayerInfo.shareInstance.playerCompany
        print(currentName)
        print(currentCompanyName)
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBOutlet weak var newName: UITextField!

    @IBAction func changeName(sender: AnyObject) {
        PlayerInfo.shareInstance.changePlayerName(newName.text!)
        print("New Name saved")
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
