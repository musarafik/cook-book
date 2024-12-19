//
//  CookBooksList.swift
//  Cook Book
//
//  Created by Musa Rafik on 12/17/24.
//

import Foundation

@Observable class CookBooksViewModel {
  var _cookBooks: [CookBook]
  
  init() {
    _cookBooks = []
  }
  
  func addCookBook(cookBook: CookBook) {
    _cookBooks.append(cookBook)
  }
}
