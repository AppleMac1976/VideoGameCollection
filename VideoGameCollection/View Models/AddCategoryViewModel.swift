//
//  AddCategoryViewModel.swift
//  VideoGameCollection
//
//  Created by Jonathon Lannon on 10/6/21.
//

import Foundation

struct AddCategoryViewModel{
    var categoryName = String()
    var categoryDescription = String()
    var categoryEmoji = String()
    var showAlert = false
    var alertTitle = String()
    var alertMessage = String()
    
    mutating func validateNewCategory(newCategory: Category, currentCollection: VideoGameCollection)->VideoGameCollection{
        if (currentCollection.collection.contains{$0 == newCategory}){
            alertTitle = "Error"
            alertMessage = "Category already exists, and cannot be duplicated"
        }
        else{
            currentCollection.collection.append(newCategory)
            alertTitle = "Success"
            alertMessage = "Category added successfully"
        }
        return currentCollection
    }
}
