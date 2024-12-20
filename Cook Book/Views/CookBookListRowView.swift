//
//  CookBookListRowView.swift
//  Cook Book
//
//  Created by Musa Rafik on 12/19/24.
//

import SwiftUI

struct CookBookListRowView: View {
  @Binding var cookBook: CookBook
  
  var body: some View {
    NavigationLink(destination: CookBookView(cookBook: $cookBook)) {
      Text("\(cookBook._name)")
    }
  }
}
