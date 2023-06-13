//
//  MindVenture2App.swift
//  MindVenture2
//
//  Created by Kirankumar dendi on 6/13/23.
//

import SwiftUI

@main
struct MindVenture2App: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
