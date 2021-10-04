//
//  CategoryCellView.swift
//  VideoGameCollection
//
//  Created by Jonathon Lannon on 10/3/21.
//

import SwiftUI

struct CategoryCellView: View {
    let categoryName: String
    let icon: Image
    var body: some View {
        VStack{
            Text(categoryName)
                .font(.system(size: 30))
                .padding()
            icon
                .font(.system(size: 50))
        }
        .padding()
        .border(.black, width: 4)
        .shadow(radius: 5)
    }
}

struct CategoryCellView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryCellView(categoryName: "Games", icon: Image(systemName: "gamecontroller"))
    }
}
