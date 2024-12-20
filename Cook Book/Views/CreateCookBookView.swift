//
//  CreateCookBookView.swift
//  Cook Book
//
//  Created by Musa Rafik on 12/18/24.
//

import SwiftUI

struct CreateCookBookView: View {
  @Environment(CookBookStore.self) private var cookBookStore
  @State private var nameInput: String = ""
  @Environment(\.dismiss) private var dismiss
  
  var body: some View {
     VStack {
      Text("Enter a name for the cookbook:")
        .font(.headline)
      
      TextField("Cookbook name", text: $nameInput)
        .textFieldStyle(RoundedBorderTextFieldStyle())
        .padding()
       
      Button {
         handleButtonClick()
       } label: {
         Text("Create the book")
       }
    }
  }
  
  func handleButtonClick() {
    // TODO need to validate user input (i.e., don't do anything if it's blank)
    let cookBook = CookBook(_name: nameInput, _recipes: [])
    
    cookBookStore.addCookBook(cookBook: cookBook)
    
    dismiss()
  }
}
