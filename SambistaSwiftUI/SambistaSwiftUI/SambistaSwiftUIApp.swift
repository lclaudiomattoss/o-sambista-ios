//
//  SambistaSwiftUIApp.swift
//  SambistaSwiftUI
//
//  Created by Luiz Claudio Mattos da Silva on 19/12/23.
//

import SwiftUI

@main
struct SambistaSwiftUIApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            LaunchView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
