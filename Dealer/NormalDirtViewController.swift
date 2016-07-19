//
//  NormalDirtViewController.swift
//  Dealer
//
//  Created by Gonzalo Caballero on 7/19/16.
//  Copyright © 2016 Gonzalo. All rights reserved.
//

import UIKit

class NormalDirtViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func buy(sender: AnyObject) {
        
        PlayerInfo.shareInstance.fetchPlayer()
        
        let actualMoney = PlayerInfo.shareInstance.playerMoney!
        
        if actualMoney >= 100 {
            PlayerInfo.shareInstance.addBagOfDirt("Normal Bag")
            
            print("Se compro")
        }
        
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
