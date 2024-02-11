//
//  GetStartedController.swift
//  MoviesApp
//
//  Created by Gustavo Adolfo Cardona Quintero on 23/01/24.
//

import UIKit

class GetStartedViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUIForCurrentTraitCollection()
        (self.view as? GetStartedView)?.updateLabel()
    }
}

extension GetStartedViewController: GetStartedViewProtocol {
    func updateLabel() {
    }

    
    func updateUIForCurrentTraitCollection() {
        if traitCollection.userInterfaceStyle == .dark {
            view.backgroundColor = .black
        } else {
            view.backgroundColor = .white
        }
    }
    
    override func traitCollectionDidChange(_ previousTraitCollection: UITraitCollection?) {
        super.traitCollectionDidChange(previousTraitCollection)
        
        updateUIForCurrentTraitCollection()
    }
}
