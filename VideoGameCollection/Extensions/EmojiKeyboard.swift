//
//  EmojiKeyboard.swift
//  VideoGameCollection
//
//  Created by Jonathon Lannon on 10/16/21.
//

import Foundation
import UIKit
import SwiftUI

class EmojiTextField: UITextField {
    override var textInputContextIdentifier: String? { "" }
    
    override var textInputMode: UITextInputMode? {
        for mode in UITextInputMode.activeInputModes {
            if mode.primaryLanguage == "emoji" {
                return mode
            }
        }
        return nil
    }
}

struct EmojiTextFieldView: UIViewRepresentable {
    
    @Binding var text: String
    
    func makeCoordinator() -> TextFieldCoordinator {
        TextFieldCoordinator(self)
    }
    
    func makeUIView(context: UIViewRepresentableContext<EmojiTextFieldView>) -> UITextField {
        let textField = EmojiTextField()
        textField.delegate = context.coordinator
        return textField
    }
    
    
    func updateUIView(_ uiView: UITextField, context: Context) {
        
    }
}

class TextFieldCoordinator: NSObject, UITextFieldDelegate {
    var parent: EmojiTextFieldView
    
    init(_ textField: EmojiTextFieldView) {
        self.parent = textField
    }
}
