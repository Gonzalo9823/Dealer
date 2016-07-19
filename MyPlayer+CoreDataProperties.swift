//
//  MyPlayer+CoreDataProperties.swift
//  Dealer
//
//  Created by Gonzalo Caballero on 7/19/16.
//  Copyright © 2016 Gonzalo. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

import Foundation
import CoreData

extension MyPlayer {

    @NSManaged var money: NSNumber?
    @NSManaged var name: String?
    @NSManaged var nameOfCompany: String?
    @NSManaged var worldRank: NSNumber?
    @NSManaged var numberOfSeeds: NSNumber?
    @NSManaged var bagsOfNormalDirt: NSNumber?

}
