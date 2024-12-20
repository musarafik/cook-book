//
//  CookBookView.swift
//  Cook Book
//
//  Created by Musa Rafik on 12/18/24.
//

import SwiftUI

struct CookBookView: View {
  @Binding var cookBook: CookBook
  
  var body: some View {
    VStack {
      NavigationLink(destination: CreateRecipeView()) {
        Text("Create a Recipe")
      }
      List(cookBook._recipes, id: \.self) {
        recipe in
        NavigationLink(destination: RecipeView()) {
          Text("test")
        }
      }
    }
  }
}
