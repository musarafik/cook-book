//
//  CookBookStore.swift
//  Cook Book
//
//  Created by Musa Rafik on 12/19/24.
//

import Foundation

@Observable
class CookBookStore {
  var _cookBooks: [CookBook]
  
  init() {
    _cookBooks = []
  }
  
  func addCookBook(cookBook: CookBook) {
    _cookBooks.append(cookBook)
  }
}
