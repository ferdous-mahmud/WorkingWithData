//
//  DataController.swift
//  CoreDataPractice
//
//  Created by Ferdous Mahmud Akash on 3/18/23.
//

import Foundation
import CoreData

class DataController: ObservableObject {
    let container = NSPersistentContainer(name: "Model")
    
    init (){
        container.loadPersistentStores {description, error in
            if let error = error {
                print("Core Data failed to load! \(error.localizedDescription)")
            }
        }
    }
}
