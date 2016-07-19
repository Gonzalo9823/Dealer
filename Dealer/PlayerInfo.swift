//
//  PlayerInfo.swift
//  Dealer
//
//  Created by Gonzalo Caballero on 7/18/16.
//  Copyright © 2016 Gonzalo. All rights reserved.
//

import Foundation
import CoreData
import UIKit

class PlayerInfo {
    
    //Singleton
    static let shareInstance = PlayerInfo()
    
    
    var playerName = ""
    var playerCompany = ""
    var playerMoney : Int?
    var playerRank : Int?
    var playerWeedSeeds : Int?
    var playerBagsOfNormalDirt = 0
    
    let context : NSManagedObjectContext!
    
    private init() {
        let appDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
        context = appDelegate.managedObjectContext
    }
    
    func addPlayer(let name : String, let company : String) {
        
        let player = NSEntityDescription.insertNewObjectForEntityForName("MyPlayer", inManagedObjectContext: context) as! MyPlayer
        
        player.name = name
        player.nameOfCompany = company
        player.worldRank = randomNumber()
        
        print("Player \(player.name!) added")
        saveContext()
        
    }
    
    func saveContext() {
        
        do {
            try context.save()
        }
            
        catch let error as NSError {
            print("Error \(error)")
        }
    }
    
    func fetchPlayer() {
        let fetchRequest = NSFetchRequest(entityName: "MyPlayer")
        
        do {
            
            let result = try context.executeFetchRequest(fetchRequest)
            
            let player = result[0] as! MyPlayer
            
            playerName = player.name!
            playerCompany = player.nameOfCompany!
            playerMoney = Int(player.money!)
            playerRank = Int(player.worldRank!)
            playerWeedSeeds = Int(player.numberOfSeeds!)
            playerBagsOfNormalDirt = Int(player.bagsOfNormalDirt!)
        }
            
        catch let error as NSError {
            print("Error: \(error)")
        }
    }
    
    func changePlayerName(name: String) {
        let fetchRequest = NSFetchRequest(entityName: "MyPlayer")
        
        do {
            
            let result = try context.executeFetchRequest(fetchRequest)
            
            let player = result[0] as! MyPlayer
            
            player.name! = name
            saveContext()
        }
            
        catch let error as NSError {
            print("Error: \(error)")
        }
    }
    
    func changePlayerMoney(money : Int) {
        let fetchRequest = NSFetchRequest(entityName: "MyPlayer")
        
        do {
            
            let result = try context.executeFetchRequest(fetchRequest)
            
            let player = result[0] as! MyPlayer
            
            let n = Int(player.money!) + money
            
            
            player.money! = NSNumber(integer: n)
            saveContext()
        }
            
        catch let error as NSError {
            print("Error: \(error)")
        }
    }
    
    func addBagOfDirt(type : String) {
        
        let fetchRequest = NSFetchRequest(entityName: "MyPlayer")
        
        
        do {
            let result = try context.executeFetchRequest(fetchRequest)
            let player = result[0] as! MyPlayer
            
            switch type {
            case "Normal Bag":
                changePlayerMoney(-100)
                let n = Int(player.bagsOfNormalDirt!) + 1
                player.bagsOfNormalDirt! =  NSNumber(integer: n)
            default:
                print("Error")
            }
        }
        
        catch {
            print("Error")
        }
    }
    
    let MAX : UInt32 = 3650
    let MIN : UInt32 = 1580
    
    func randomNumber() -> Int {
        let random_number = Int(arc4random_uniform(MAX) + MIN)
        return random_number
    }
    
}