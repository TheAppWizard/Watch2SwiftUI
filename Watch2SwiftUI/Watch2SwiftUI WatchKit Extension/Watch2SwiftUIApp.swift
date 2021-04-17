//
//  Watch2SwiftUIApp.swift
//  Watch2SwiftUI WatchKit Extension
//
//  Created by Shreyas Vilaschandra Bhike on 17/04/21.
//

import SwiftUI

@main
struct Watch2SwiftUIApp: App {
    @SceneBuilder var body: some Scene {
        WindowGroup {
            NavigationView {
                ContentView()
            }
        }

        WKNotificationScene(controller: NotificationController.self, category: "myCategory")
    }
}
