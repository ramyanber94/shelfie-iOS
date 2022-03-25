//
//  shelfieApp.swift
//  shelfie
//
//  Created by Luiz Fernando Reis on 2022-03-25.
//

import SwiftUI

@main
struct shelfieApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
