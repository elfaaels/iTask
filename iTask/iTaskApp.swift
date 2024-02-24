//
//  iTaskApp.swift
//  iTask
//
//  Created by Elfana Anamta Chatya on 24/02/24.
//

import SwiftUI

@main
struct iTaskApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
