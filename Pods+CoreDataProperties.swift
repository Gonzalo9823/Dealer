//
//  Pods+CoreDataProperties.swift
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

extension Pods {

    @NSManaged var timeUntilReady: NSDate?
    @NSManaged var inUse: NSNumber?
    @NSManaged var typeOfDirt: String?
    @NSManaged var typeOfWater: String?
    @NSManaged var typeOfSeed: String?

}
