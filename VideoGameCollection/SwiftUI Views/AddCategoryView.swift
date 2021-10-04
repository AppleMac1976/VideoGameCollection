//
//  AddCategoryView.swift
//  VideoGameCollection
//
//  Created by Jonathon Lannon on 9/11/21.
//

import SwiftUI

struct AddCategoryView: View {
    @State private var categoryName = String()
    @State private var categoryDescription = String()
    //need a state property here for an image of some kind...but what type should it be??
    var body: some View {
        VStack{
            TextField("Name of category", text: $categoryName)
            TextField("Category description", text: $categoryDescription)
                .lineLimit(6)
        }
    }
}

struct AddCategoryView_Previews: PreviewProvider {
    static var previews: some View {
        AddCategoryView()
    }
}
