//
//  ContentView.swift
//  VideoGameCollection
//
//  Created by Jonathon Lannon on 7/7/21.
//

import SwiftUI
import CoreData

/**
 View to display the user's current games in their collection
 */
struct ContentView: View {
    //SwiftUI body
    var body: some View {
        TabView{
            NavigationView{
                HomeView()
            }
            .tabItem{
                Image(systemName: "house")
                Text("Home")
            }
            NavigationView{
                AddItemView()
                GameDetailsView(id: UserDefaults.standard.integer(forKey: "lastViewedGame"))
            }
            .tabItem{
                Image(systemName: "plus")
                Text("Add")
            }
            NavigationView{
                AddCategoryView()
            }
            .tabItem{
                Image(systemName: "book")
                Text("Add Category")
            }
            NavigationView{
                SettingsView()
            }
            .tabItem{
                Image(systemName: "gearshape")
                Text("Settings")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
