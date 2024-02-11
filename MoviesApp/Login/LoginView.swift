//  LoginView.swift
//  MoviesApp
//  Created by Gustavo Adolfo Cardona Quintero on 19/01/24.

import UIKit

@objc protocol LoginViewProtocol: AnyObject {
    func textFieldEditingChanged(_ text: String)
    func buttonUpdate()
}

class LoginView: UIView {
    
    @IBOutlet private weak var textFieldLogin: UITextField!
    
    @IBAction private func tapToCloseKeyboard(_ gesture: UITapGestureRecognizer) {
        self.endEditing(true)
    }
    
    @IBOutlet private weak var delegate: LoginViewProtocol?
    
    @IBOutlet private weak var buttonLogin: UIButton?
    
    @IBAction func textFieldLogin(_ sender: UITextField) {
        delegate?.textFieldEditingChanged(sender.text ?? "")
    }
    
    @IBOutlet private weak var groupViewKeyboard: UIView!
    @IBOutlet private weak var groupViewKeyboardAnchorCenterY: NSLayoutConstraint!

    
    func keyboardAppear(_ info: KeyboardManager.Info) {
        
        if info.frame.origin.y < self.groupViewKeyboard.frame.maxY {
            let delta = info.frame.origin.y +  self.groupViewKeyboard.frame.maxY
            self.groupViewKeyboardAnchorCenterY.constant = 2 * delta
            print(delta)
        }
//        self.groupViewKeyboard.frame.origin.y + self.groupViewKeyboard.frame.height
        
    }
    
    func keyboardDisappear(_ info: KeyboardManager.Info) {
        self.groupViewKeyboardAnchorCenterY.constant = 0
    }
    
}

extension LoginView: LoginViewProtocol {
    func textFieldEditingChanged(_ text: String) {

    }
    
   
    func buttonUpdate() {
    }
    
    func textFieldUpdate() {
        self.textFieldLogin.textFielUpdate()
    }
    
}



