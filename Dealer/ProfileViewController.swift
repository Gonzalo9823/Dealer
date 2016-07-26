//
//  ProfileViewController.swift
//  Dealer
//
//  Created by Gonzalo Caballero on 7/15/16.
//  Copyright © 2016 Gonzalo Caballero. All rights reserved.
//

import UIKit
import CoreData

class ProfileViewController: UIViewController {
    
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var currentMoney: UILabel!
    @IBOutlet weak var worldRank: UILabel!
    @IBOutlet weak var numberOfSeeds: UILabel!
    @IBOutlet weak var numbersOfBagsOfDirt: UILabel!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        scrollView.contentSize.height = 700
        loadPlayer()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidAppear(animated: Bool) {
        loadPlayer()
        
    }
    
    func fetchRequest() {
        let appDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
        let context = appDelegate.managedObjectContext
        
        let fetch = NSFetchRequest(entityName: "MyPlayer")
        
        do {
            let results = try context.executeFetchRequest(fetch)
            print(results)
        }
            
        catch {
            print("Error")
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
    
    func loadPlayer() {
        PlayerInfo.shareInstance.fetchPlayer()
        
        name.text! = "Hello, \(PlayerInfo.shareInstance.playerName)"
        currentMoney.text! = "Money: $\(PlayerInfo.shareInstance.playerMoney!)"
        worldRank.text! = "Country Rank: \(PlayerInfo.shareInstance.playerRank!)"
        numberOfSeeds.text! = "Number of Seeds: \(PlayerInfo.shareInstance.playerWeedSeeds!)"
        numbersOfBagsOfDirt.text! = "Number of bags of dirt: \(PlayerInfo.shareInstance.playerBagsOfNormalDirt)"
    }
    
}










