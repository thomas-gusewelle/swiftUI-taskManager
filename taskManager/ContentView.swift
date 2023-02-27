//
//  ContentView.swift
//  taskManager
//
//  Created by Thomas Gusewelle on 2/26/23.
//

import SwiftUI
import CoreData

struct ContentView: View {
    @Environment(\.managedObjectContext) private var viewContext
   

    var body: some View {
        NavigationView {
            taskview()
                .navigationTitle("Task Manager")
                .navigationBarTitleDisplayMode(.inline)
        }.navigationViewStyle(.stack)
    }

}

private let itemFormatter: DateFormatter = {
    let formatter = DateFormatter()
    formatter.dateStyle = .short
    formatter.timeStyle = .medium
    return formatter
}()

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
    }
}
