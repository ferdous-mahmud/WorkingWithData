//
//  Location+CoreDataProperties.swift
//  CoreDataPractice
//
//  Created by Ferdous Mahmud Akash on 3/18/23.
//
//

import Foundation
import CoreData


extension Location {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Location> {
        return NSFetchRequest<Location>(entityName: "Location")
    }

    @NSManaged public var city: String?
    @NSManaged public var neighborhood: String?
    @NSManaged public var phoneNumber: String?
    @NSManaged public var toCustomer: Customer?
    @NSManaged public var toDessert: Dessert?
    @NSManaged public var toDish: Dish?

}

extension Location : Identifiable {

}
