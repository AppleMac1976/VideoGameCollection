//
//  Category.swift
//  VideoGameCollection
//
//  Created by Jonathon Lannon on 10/3/21.
//

import Foundation
import SwiftUI

class Category: ObservableObject, Identifiable{
    let id = UUID()
    var name: String
    var description: String
    var icon: Image
    var items: [Item]
    
    init(name: String, description: String, icon: Image, items: [Item]){
        self.name = name
        self.description = description
        self.icon = icon
        self.items = items
    }
}
