//
//  ContentView.swift
//  CoreDataPractice
//
//  Created by Ferdous Mahmud Akash on 3/18/23.
//

import SwiftUI
import CoreData

struct ContentView: View {
    @Environment(\.managedObjectContext) private var viewContext
    
    var body: some View {
        
        let newDish = Dish(context: viewContext)
        newDish.name = "Hamburger"
        newDish.size = "Extra"
        newDish.price = 10.49
        
        let newDessert = Dessert(context: viewContext)
        newDessert.name = "Apple pie"
        newDessert.size = "Large"
        newDessert.price = 3.99
    
    }
    
}
