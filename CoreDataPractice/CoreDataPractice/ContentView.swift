//
//  ContentView.swift
//  CoreDataPractice
//
//  Created by Ferdous Mahmud Akash on 3/18/23.
//

import SwiftUI

struct ContentView: View {
    @Environment(\.managedObjectContext) var viewContext
    @FetchRequest(
        sortDescriptors: [],
        animation: .default)
    private var dishes: FetchedResults<Dish>
    @FetchRequest(
        sortDescriptors: [],
        animation: .default)
    private var customers: FetchedResults<Customer>


//    let newLocation = Location(context: viewContext)
//    newLocation.name = "9000 Example Road"
//    newLocation.name = "(212) 555 1234"
    
    
    var body: some View {
        VStack {
            HStack{
                List(dishes) { dish in
                    Text(dish.name ?? "Unknown")
                }
                List(customers) { customer in
                    Text(customer.fullName ?? "Unknown")
                }
            }
            Button("Add Dish"){
                
                let newDish = Dish(context: viewContext)
                newDish.name = "Apple Pie"
                newDish.size = "Extra Large"
                newDish.price = 10
            }
            Button("Add Customer"){
                
                let newCustomer = Customer(context: viewContext)
                newCustomer.fullName = "Ferdous"

            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
