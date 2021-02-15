//
//  The_Social_RevolutionApp.swift
//  The Social Revolution
//
//  Created by Karim Elgendy on 15/02/2021.
//

import SwiftUI

@main
struct The_Social_RevolutionApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
