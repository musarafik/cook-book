//
//  CookBooksListView.swift
//  Cook Book
//
//  Created by Musa Rafik on 12/17/24.
//

import SwiftUI

struct CookBooksListView: View {
  @Environment(CookBookStore.self) private var cookBookStore
  
  var body: some View {
    @Bindable var bindableCookBookStore = cookBookStore
    NavigationView {
      VStack {
        NavigationLink(destination: CreateCookBookView()) {
              Text("Create a CookBook")
        }
        
        List($bindableCookBookStore._cookBooks, id: \.self) { $cookBook in
          CookBookListRowView(cookBook: $cookBook)
        }
      }
    }
  }
}
