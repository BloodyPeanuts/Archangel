//
//  ArchangelApp.swift
//  Archangel
//
//  Created by Hesamoddin Aran  on 1/26/22.
//

import SwiftUI

@main
struct ArchangelApp: App {
    
    let persistentContainer = coreDataManger.shared
    
    var body: some Scene {
        WindowGroup {
            ContentView().environment(\.managedObjectContext, persistentContainer.persistentContainer.viewContext)
        }
    }
}
