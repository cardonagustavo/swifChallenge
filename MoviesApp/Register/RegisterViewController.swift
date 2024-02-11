//
//  RegisterViewController.swift
//  MoviesApp
//
//  Created by Gustavo Adolfo Cardona Quintero on 23/01/24.
//

import UIKit

class RegisterViewController: UIViewController {
    
    var registerView: RegisterView? {
        return self.view as? RegisterView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        registerView?.customComponentsLabel()
        registerView?.customComponentsTextField() 
        registerView?.backgroundScrollView()
        registerView?.setupTransparentBackgroundViews()
        registerView?.setupRoundImageViewWithGradientBorder()
        registerView?.formatButton()
    }
}
