//
//  Ingredient.swift
//  Cook Book
//
//  Created by Musa Rafik on 12/17/24.
//

import Foundation

enum UnitOfMeasurement {
  case teaspoon
  case tablespoon
  case fluidOunce
  case cup
  case pint
  case quart
  case gallon
}

struct Ingredient: Hashable {
  var _name: String
  var _quantity: Int
  var _unitOfMeasurement: UnitOfMeasurement
  
  func hash(into hasher: inout Hasher) {
    hasher.combine(_name)
    hasher.combine(_quantity)
    hasher.combine(_unitOfMeasurement)
  }
}
