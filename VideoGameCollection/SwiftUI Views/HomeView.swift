//
//  HomeView.swift
//  VideoGameCollection
//
//  Created by Jonathon Lannon on 9/11/21.
//

import SwiftUI

struct HomeView: View {
    @EnvironmentObject var collection: VideoGameCollection
    var body: some View {
        NavigationView{
            VStack{
                ForEach(collection.collection){ uniqueCategory in
                    CategoryCellView(categoryName: uniqueCategory.name, icon: uniqueCategory.icon)
                }
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView().environmentObject(VideoGameCollection())
    }
}
