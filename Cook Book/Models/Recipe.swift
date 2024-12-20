//
//  Recipe.swift
//  Cook Book
//
//  Created by Musa Rafik on 12/17/24.
//

import Foundation

struct Recipe: Hashable {
  var _name: String
  var _ingredients: [Ingredient]
  var _instructions: [String]
  
  func hash(into hasher: inout Hasher) {
    hasher.combine(_name)
    hasher.combine(_ingredients)
    hasher.combine(_instructions)
  }
}
