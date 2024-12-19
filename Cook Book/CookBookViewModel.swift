//
//  CookBookViewModel.swift
//  Cook Book
//
//  Created by Musa Rafik on 12/18/24.
//

import Foundation

@Observable class CookBookViewModel {
  var _recipes: [Recipe]
  
  init() {
    _recipes = []
  }
  
  func addRecipe(recipe: Recipe) {
    _recipes.append(recipe)
  }
}
