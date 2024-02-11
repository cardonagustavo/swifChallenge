//
//  GetStarted.swift
//  MoviesApp
//
//  Created by Gustavo Adolfo Cardona Quintero on 23/01/24.
//

import UIKit

protocol GetStartedViewProtocol: AnyObject {
    func updateLabel()
    
}


class GetStartedView: UIView {
    
    @IBOutlet private weak var labelWelcome: UILabel!
    
    @IBOutlet private weak var buttonUpdate: UIButton!
    
    @IBAction func buttonGetStarted(_ sender: UIButton) {
        
    }
    var delegate: GetStartedViewProtocol?
    
    func updateLabel() {
        self.labelWelcome.font = UIFont(name: "verdana", size: 25)
        self.labelWelcome.textAlignment = .center
    }
}

extension GetStartedView: GetStartedViewProtocol {
    func updateButton() {
        self.buttonUpdate.backgroundColor? = UIColor.black
    }
}


