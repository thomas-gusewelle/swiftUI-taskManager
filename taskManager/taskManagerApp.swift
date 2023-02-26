//
//  taskManagerApp.swift
//  taskManager
//
//  Created by Thomas Gusewelle on 2/26/23.
//

import SwiftUI

@main
struct taskManagerApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
