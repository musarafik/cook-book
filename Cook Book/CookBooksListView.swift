//
//  CookBooksListView.swift
//  Cook Book
//
//  Created by Musa Rafik on 12/17/24.
//

import SwiftUI

struct CookBooksListView: View {
  @State public var cookBooksViewModel = CookBooksViewModel()
  
  var body: some View {
    NavigationView {
      VStack {
        NavigationLink(destination: CreateCookBookView(cookBooksViewModel: $cookBooksViewModel)) {
              Text("Create a CookBook")
        }
        
        List(cookBooksViewModel._cookBooks, id: \.self) { cookBook in
          Text(cookBook._name)
        }
      }
    }
  }
}
