//
//  ScrumosApp.swift
//  Scrumos
//
//  Created by Yauheni Pakala on 6/19/22.
//

import SwiftUI

@main
struct ScrumosApp: App {
    @State private var scrums = DailyScrum.sampleData

    var body: some Scene {
        WindowGroup {
            NavigationView {
                ScrumsView(scrums: $scrums)
            }
        }
    }
}
