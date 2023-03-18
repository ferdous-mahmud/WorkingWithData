//
//  Dessert+CoreDataProperties.swift
//  CoreDataPractice
//
//  Created by Ferdous Mahmud Akash on 3/18/23.
//
//

import Foundation
import CoreData


extension Dessert {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Dessert> {
        return NSFetchRequest<Dessert>(entityName: "Dessert")
    }

    @NSManaged public var name: String?
    @NSManaged public var size: String?
    @NSManaged public var price: Float
    @NSManaged public var fromLocaiton: Location?
    @NSManaged public var fromCustomer: Customer?

}

extension Dessert : Identifiable {

}
