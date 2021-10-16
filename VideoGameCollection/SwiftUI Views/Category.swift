//
//  Category.swift
//  VideoGameCollection
//
//  Created by Jonathon Lannon on 10/3/21.
//

import Foundation

class Category: ObservableObject, Identifiable, Equatable{
    let id = UUID()
    var name: String
    var description: String
    var icon: String
    var items: [Item]
    
    init(name: String, description: String, icon: String, items: [Item]){
        self.name = name
        self.description = description
        self.icon = icon
        self.items = items
    }
    
    init(name: String, description: String, icon: String){
        self.name = name
        self.description = description
        self.icon = icon
        self.items = []
    }
    
    static func == (lhs: Category, rhs: Category) -> Bool {
        if lhs.name == rhs.name{
            return true
        }
        else{
            return false
        }
    }
}
