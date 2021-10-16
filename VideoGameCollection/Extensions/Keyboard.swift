//
//  Keyboard.swift
//  VideoGameCollection
//
//  Created by Jonathon Lannon on 10/16/21.
//

import Foundation
import UIKit

extension UIApplication {
    func dismissKeyboard() {
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
