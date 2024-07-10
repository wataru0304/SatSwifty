//
//  UITextField+SatSwifty.swift
//  SatSwifty
//
//  Created by Wataru Weng on 2024/6/25.
//

import UIKit

public extension UITextField {
    enum TextType {
        case emailAddress
        case password
        case plainTextPassword
        case generic
    }
}

public extension UITextField {

    func font(_ font: UIFont) -> Self {
        self.font = font
        return self
    }
    
    func textColor(_ color: UIColor) -> Self {
        self.textColor = color
        return self
    }
    
    func placeholder(_ text: String) -> Self {
        self.placeholder = text
        return self
    }
    
    func addPaddingLeft(padding: CGFloat, mode: UITextField.ViewMode) -> Self {
        let paddingView = UIView()
            .frame(CGRect(x: 0, y: 0, width: padding, height: frame.height))
        self.leftView = paddingView
        self.leftViewMode = mode
        return self
    }
    
    func addPaddingRight(padding: CGFloat, mode: UITextField.ViewMode) -> Self {
        let paddingView = UIView()
            .frame(CGRect(x: 0, y: 0, width: padding, height: frame.height))
        self.rightView = paddingView
        self.rightViewMode = mode
        return self
    }
    
    func textType(_ type: UITextField.TextType) -> Self {
        switch type {
        case .emailAddress:
            return autocorrectionType(.no)
                .autocapitalizationType(.none)
                .keyboardType(.emailAddress)
                .isSecureTextEntry(false)
        case .password:
            return autocorrectionType(.no)
                .autocapitalizationType(.none)
                .keyboardType(.asciiCapable)
                .isSecureTextEntry(true)
        case .plainTextPassword:
            return autocorrectionType(.no)
                .autocapitalizationType(.none)
                .keyboardType(.asciiCapable)
                .isSecureTextEntry(false)
        case .generic:
            return isSecureTextEntry(false)
        }
    }
    
    func keyboardType(_ type: UIKeyboardType) -> Self {
        self.keyboardType = type
        return self
    }
    
    func autocorrectionType(_ type: UITextAutocorrectionType) -> Self {
        self.autocorrectionType = type
        return self
    }
    
    func autocapitalizationType(_ type: UITextAutocapitalizationType) -> Self {
        self.autocapitalizationType = type
        return self
    }
    
    func isSecureTextEntry(_ bool: Bool) -> Self {
        self.isSecureTextEntry = bool
        return self
    }
    
    func clearButton(mode: UITextField.ViewMode) -> Self {
        self.clearButtonMode = mode
        return self
    }
    
    func textAlignment(_ alignment: NSTextAlignment) -> Self {
        self.textAlignment = alignment
        return self
    }
        
    func keyboardAppearance(_ mode: UIKeyboardAppearance) -> Self {
        self.keyboardAppearance = mode
        return self
    }
    
    func inputView(_ view: UIView) -> Self {
        self.inputView = view
        return self
    }
    
    func inputAccessoryView(_ view: UIView) -> Self {
        self.inputAccessoryView = view
        return self
    }
    
    func returnKeyType(_ type: UIReturnKeyType) -> Self {
        self.returnKeyType = type
        return self
    }
    
    func delegate(_ delegate: UITextFieldDelegate) -> Self {
        self.delegate = delegate
        return self
    }
}
