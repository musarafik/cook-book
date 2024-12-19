//
//  CreateRecipeView.swift
//  Cook Book
//
//  Created by Musa Rafik on 12/18/24.
//

import SwiftUI

struct CreateRecipeView: View {
  @State private var nameInput: String = ""
  @State private var ingredients: [Ingredient] = []
  @State private var instructions: [String] = []
  
  var body: some View {
    VStack {
      Text("Enter a name for the recipe:")
        .font(.headline)
      
      TextField("Recipe name", text: $nameInput)
        .textFieldStyle(RoundedBorderTextFieldStyle())
        .padding()
    }
  }
}
