//
//  ScrumosApp.swift
//  Scrumos
//
//  Created by Yauheni Pakala on 6/19/22.
//

import SwiftUI

@main
struct ScrumosApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ScrumsView(scrums: DailyScrum.sampleData)
            }
        }
    }
}
