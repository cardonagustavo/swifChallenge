//  RegisterView.swift
//  MoviesApp
//  Created by Gustavo Adolfo Cardona Quintero on 23/01/24.

import UIKit

@objc protocol RegisterViewDelegate: AnyObject {
}

protocol RegisterViewProtocol {
    func customComponentsLabel()
    func backgroundScrollView()
    func setupTransparentBackgroundViews()
    func setupRoundImageViewWithGradientBorder()
    func customComponentsTextField()
    func formatButton()
}

class RegisterView: UIView {
    
    @IBOutlet weak var delegate: RegisterViewDelegate?
    
    @IBOutlet weak var scrollViewContainer: UIScrollView!
    
    @IBOutlet weak var viewTop: UIView!
    @IBOutlet weak var imageProfile: UIImageView!
    @IBOutlet weak var labelCreateAccount: UILabel!
    
    
    @IBOutlet weak var viewBottom: UIView!
    @IBOutlet weak var secondLabel: UITextView!
    @IBOutlet weak var textFieldEmail: UITextField!
    @IBOutlet weak var textFieldNumberPhone: UITextField!
    @IBOutlet weak var textFieldNickName: UITextField!
    @IBOutlet weak var switchRememberMe: UISwitch!
    @IBOutlet weak var labelRememberMe: UILabel!
    @IBOutlet weak var buttonCreate: UIButton!
    @IBOutlet weak var textBottom: UITextView!
    
}

extension RegisterView: RegisterViewProtocol {
    func backgroundScrollView() {
            let gradientLayer = CAGradientLayer()
            gradientLayer.frame = scrollViewContainer.bounds
            gradientLayer.colors = [UIColor.red.cgColor, UIColor.black.cgColor]
            gradientLayer.startPoint = CGPoint(x: 0, y: 0)
            gradientLayer.endPoint = CGPoint(x: 1, y: 1)
            
            scrollViewContainer.layer.sublayers?.filter { $0 is CAGradientLayer }.forEach { $0.removeFromSuperlayer() }
            
            scrollViewContainer.layer.insertSublayer(gradientLayer, at: 0)
    }
    
    func customComponentsLabel() {
        self.labelCreateAccount.textColor = UIColor.black
        self.labelCreateAccount.font = UIFont(name: "Thonburi-Bold", size: 30)
        self.labelCreateAccount.shadowColor = UIColor.black
        self.labelCreateAccount.shadowOffset = CGSize(width: 2, height: 2)
        self.labelCreateAccount.adjustsFontSizeToFitWidth = false
        
        
        self.labelRememberMe.font = UIFont(name: "comic sms", size: 10)
        self.labelRememberMe.textColor = UIColor.black
    }
    
    func setupTransparentBackgroundViews() {
        viewTop.backgroundColor = UIColor.clear
        viewBottom.backgroundColor = UIColor.clear
    }
    
    func setupRoundImageViewWithGradientBorder() {
        imageProfile.layer.cornerRadius = imageProfile.frame.size.width / 2
        imageProfile.clipsToBounds = true

       
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = imageProfile.bounds
        gradientLayer.colors = [UIColor.red.cgColor, UIColor.blue.cgColor]
        gradientLayer.startPoint = CGPoint(x: 0, y: 0)
        gradientLayer.endPoint = CGPoint(x: 1, y: 1)
        gradientLayer.cornerRadius = imageProfile.frame.size.width / 2

        imageProfile.layer.insertSublayer(gradientLayer, below: imageProfile.layer)
    }

    
    func customComponentsTextField() {
        textFieldEmail.placeholder = "E-mail"
        textFieldEmail.leftViewMode = .always
        textFieldEmail.leftView = UIImageView(image: UIImage(named: "@Icon"))
        
        textFieldNumberPhone.placeholder = "Phone Numbre"
        textFieldNumberPhone.leftViewMode = .always
        textFieldNumberPhone.leftView = UIImageView(image: UIImage(named: "phoneIcon"))
        
        textFieldNickName.placeholder = "User Name"
        textFieldNickName.leftViewMode = .always
        textFieldNickName.leftView = UIImageView(image: UIImage(named: "userIcon"))
        
        textFieldEmail.backgroundColor = UIColor.lightGray.withAlphaComponent(0.3)
        textFieldNumberPhone.backgroundColor = UIColor.lightGray.withAlphaComponent(0.3)
        textFieldNickName.backgroundColor = UIColor.lightGray.withAlphaComponent(0.3)
        
        textFieldEmail.borderStyle = .none
        textFieldNumberPhone.borderStyle = .none
        textFieldNickName.borderStyle = .none
        
        addBottomLine(to: textFieldEmail)
        addBottomLine(to: textFieldNumberPhone)
        addBottomLine(to: textFieldNickName)
    }

    func addBottomLine(to textField: UITextField) {
        let bottomLine = CALayer()
        bottomLine.backgroundColor = UIColor.black.cgColor
        bottomLine.frame = CGRect(x: 0, y: textField.frame.height - 2, width: textField.frame.width, height: 2)
        textField.layer.addSublayer(bottomLine)
    }
    
    func formatButton() {
        buttonCreate.layer.cornerRadius = 10
        buttonCreate.clipsToBounds = true
        
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = buttonCreate.bounds
        gradientLayer.colors = [UIColor.black.cgColor, UIColor.red.cgColor]
        gradientLayer.startPoint = CGPoint(x: 0, y: 0)
        gradientLayer.endPoint = CGPoint(x: 1, y: 1)
        buttonCreate.layer.insertSublayer(gradientLayer, at: 0)
        
        buttonCreate.setTitleColor(UIColor.white, for: .normal)
        
        buttonCreate.layer.shadowColor = UIColor.black.cgColor
        buttonCreate.layer.shadowOffset = CGSize(width: 0, height: 3)
        buttonCreate.layer.shadowOpacity = 0.5
        buttonCreate.layer.shadowRadius = 4
    }
    
    func formatTextView() {
        textBottom.textColor = UIColor.black
        textBottom.backgroundColor = UIColor.lightGray.withAlphaComponent(0.3)
        textBottom.layer.cornerRadius = 10
        textBottom.clipsToBounds = true

    }

}
