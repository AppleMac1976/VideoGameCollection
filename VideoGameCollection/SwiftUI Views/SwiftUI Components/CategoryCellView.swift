//
//  CategoryCellView.swift
//  VideoGameCollection
//
//  Created by Jonathon Lannon on 10/3/21.
//

import SwiftUI

struct CategoryCellView: View {
    let categoryName: String
    let emoji: String
    var body: some View {
        //temporary placeholder
        NavigationLink(destination: CategoryItemsList()){
            VStack{
                Text(categoryName)
                    .font(.system(size: 20))
                    .padding()
                Text(emoji)
                    .font(.system(size: 40))
            }
            .padding()
            .border(.black, width: 4)
            .shadow(radius: 5)
        }
    }
}

struct CategoryCellView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryCellView(categoryName: "Games", emoji: "🎮")
    }
}
