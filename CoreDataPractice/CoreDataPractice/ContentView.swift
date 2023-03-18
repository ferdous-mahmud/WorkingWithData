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
    
    
    @State private var showingAlert = false
    
    
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
            HStack{
                Spacer()
                Button("Add Dish"){
                    
                    let newDish = Dish(context: viewContext)
                    newDish.name = "Apple Pie"
                    newDish.size = "Extra Large"
                    newDish.price = 10
                }
                .padding(6)
                .background(.yellow)
                .cornerRadius(5)
                
                Spacer()
                Spacer()
                
                Button("Add Customer"){
                    
                    let newCustomer = Customer(context: viewContext)
                    newCustomer.fullName = "Ferdous"
                    
                }
                .padding(6)
                .background(.yellow)
                .cornerRadius(5)
                Spacer()
            }
            Button("Save Changes"){
                guard viewContext.hasChanges else { return }
                do {
                    try viewContext.save()
                    showingAlert = true
                } catch (let error) {
                    print("Error for saving Core Data! \(error.localizedDescription)")
                }
            }
            .padding(10)
            .background(.green)
            .cornerRadius(10)
            .alert("Saved!", isPresented: $showingAlert) {
                Button("OK", role: .cancel) { }
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
