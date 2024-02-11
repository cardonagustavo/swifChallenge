//
//  Util.swift
//  MoviesApp
//
//  Created by Gustavo Adolfo Cardona Quintero on 23/01/24.
//

import UIKit

extension UITextField {
    func textFielUpdate() {
        self.placeholder = "E-mail"
        self.layer.cornerRadius = CGFloat(integerLiteral: 7)
        self.layer.borderWidth = CGFloat(integerLiteral: 1)
    }
}

extension UIButton {
    func buttonUpdate() {
        self.layer.cornerRadius = 5
        self.backgroundColor = UIColor(red: 38.0/255.0, green: 20.0/255.0, blue: 7.0/255.0, alpha: 1.0)
    }
}

extension UITextField {
    func textFieldEditingChanged() {
        self.addTarget(self, action: #selector(textFieldDidChange(_:)), for: .editingChanged)
    }
    
    @objc func textFieldDidChange(_ textField: UITextField) {
     
    }
}

