//  LoginViewController.swift
//  MoviesApp
//  Created by Gustavo Adolfo Cardona Quintero on 19/01/24.

import UIKit

class LoginViewController: UIViewController {
    private var loginView: LoginView? { self.view as? LoginView }
    
    var loginCustom: LoginViewProtocol? {
        self.view as? LoginViewProtocol
        
    }
    
    lazy var keyboardManager = KeyboardManager(delegate: self)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.loginCustom?.buttonUpdate()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        self.keyboardManager.registerKeyboardNotifications()
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        self.keyboardManager.unregisterKeyboardNotifications()
    }
    
//    override func viewWillDisappear(_ animated: Bool) {
//        super.viewWillDisappear(animated)
//        self.unregisterKeyboardNotifications()
//    }
 
}


extension LoginViewController: KeyboardManagerDelegate {
    func keyboardManager(_ keyboardManager: KeyboardManager, keyboardWillShowWith info: KeyboardManager.Info) {
        print("teclado aparece")
        print(info)
        self.loginView?.keyboardAppear(info)
    }
    
    func keyboardManager(_ keyboardManager: KeyboardManager, keyboardWillHideWith info: KeyboardManager.Info) {
        print("teclado desaparece")
        print(info)
        self.loginView?.keyboardDisappear(info)
    }
    
    
}

