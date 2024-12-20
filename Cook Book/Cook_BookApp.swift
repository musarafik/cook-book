//
//  Cook_BookApp.swift
//  Cook Book
//
//  Created by Musa Rafik on 12/17/24.
//

import SwiftUI

@main
struct Cook_BookApp: App {
  @State private var cookBookStore = CookBookStore()
  
  var body: some Scene {
        WindowGroup {
            CookBooksListView()
            .environment(cookBookStore)
        }
    }
}
