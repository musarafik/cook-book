//
//  CookBook.swift
//  Cook Book
//
//  Created by Musa Rafik on 12/17/24.
//

import Foundation

struct CookBook: Hashable {
  var _name: String
  var _recipes: [Recipe]
  
  func hash(into hasher: inout Hasher) {
    hasher.combine(_name)
    hasher.combine(_recipes)
  }
}
