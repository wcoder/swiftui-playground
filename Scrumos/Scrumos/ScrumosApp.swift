//
//  ScrumosApp.swift
//  Scrumos
//
//  Created by Yauheni Pakala on 6/19/22.
//

import SwiftUI

@main
struct ScrumosApp: App {
    @StateObject private var store = ScrumStore()

    var body: some Scene {
        WindowGroup {
            NavigationView {
                ScrumsView(scrums: $store.scrums) {
                    Task {
                        do {
                            let _ = try await ScrumStore.save(scrums: store.scrums)
                        } catch {
                            fatalError("Error saving scrums.")
                        }
                    }
                }
            }
            .task {
                do {
                    store.scrums = try await ScrumStore.load()
                } catch {
                    fatalError("Error loading scrums.")
                }
            }
        }
    }
}
