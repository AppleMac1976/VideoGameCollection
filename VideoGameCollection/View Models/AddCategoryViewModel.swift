//
//  AddCategoryViewModel.swift
//  VideoGameCollection
//
//  Created by Jonathon Lannon on 10/6/21.
//

import Foundation
import SwiftUI

class AddCategoryViewModel{
    @EnvironmentObject var currentCollection: VideoGameCollection
    
    func createCategory(newCategory: Category)->Bool{
        if (currentCollection.collection.contains{$0 == newCategory}){
            return false
        }
        else{
            currentCollection.collection.append(newCategory)
            return true
        }
    }
}
