//
//  CoreDataPracticeApp.swift
//  CoreDataPractice
//
//  Created by Ferdous Mahmud Akash on 3/18/23.
//

import SwiftUI

@main
struct CoreDataPracticeApp: App {
    @StateObject private var dataController = DataController()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, dataController.container.viewContext)
        }
    }
}
