//
//  BirthdaysApp.swift
//  Birthdays
//
//  Created by RyanA on 4/16/25.
//

import SwiftUI
import SwiftData

@main
struct BirthdaysApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .modelContainer(for: Friend.self)
        }
    }
}
