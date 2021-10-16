//
//  AddCategoryView.swift
//  VideoGameCollection
//
//  Created by Jonathon Lannon on 9/11/21.
//

import SwiftUI

struct AddCategoryView: View {
    @State var viewModel: AddCategoryViewModel
    @EnvironmentObject var currentCollection: VideoGameCollection
    //need a state property here for an image of some kind...but what type should it be??
    var body: some View {
        VStack{
            Text("Category")
                .frame(alignment: .leading)
            TextField("Name of category", text: $viewModel.categoryName)
                .padding()
            Text("Description")
                .frame(alignment: .leading)
            TextField("Category description", text: $viewModel.categoryDescription)
                .lineLimit(6)
                .padding()
            VStack{
                Text("Select an Emoji Label:")
                EmojiTextFieldView(text: $viewModel.categoryEmoji)
                    .border(.black, width: 3)
                    .frame(width: 80, height: 80, alignment: .center)
            }
            Button{
                let newCollection = viewModel.validateNewCategory(newCategory: Category(name: viewModel.categoryName, description: viewModel.categoryDescription, icon: viewModel.categoryEmoji), currentCollection: self.currentCollection)
                currentCollection.collection = newCollection.collection
                viewModel.showAlert.toggle()
            }
            label:{
                Text("Save")
            }
        }
        .navigationTitle("Add Category")
        .alert(isPresented: $viewModel.showAlert){
            Alert(title: Text(viewModel.alertTitle), message: Text(viewModel.alertMessage), dismissButton: Alert.Button.default(Text("OK")))
        }
    }
}

struct AddCategoryView_Previews: PreviewProvider {
    static var previews: some View {
        AddCategoryView(viewModel: AddCategoryViewModel())
    }
}
