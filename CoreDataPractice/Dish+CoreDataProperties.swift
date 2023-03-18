//
//  Dish+CoreDataProperties.swift
//  CoreDataPractice
//
//  Created by Ferdous Mahmud Akash on 3/18/23.
//
//

import Foundation
import CoreData


extension Dish {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Dish> {
        return NSFetchRequest<Dish>(entityName: "Dish")
    }

    @NSManaged public var name: String?
    @NSManaged public var szie: String?
    @NSManaged public var price: Float
    @NSManaged public var fromLocation: Location?
    @NSManaged public var fromCustomer: Customer?

}

extension Dish : Identifiable {

}
