//
//  FlashcardApp.swift
//  Flashcard
//
//  Created by ryo fujimura on 3/16/24.
//

import SwiftUI

@main
struct FlashcardApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
