//
//  ViewSpeceficController.swift
//  Oziq-Ovqat Retseptlari
//
//  Created by Qudrat on 24/07/24.
//

import UIKit

protocol ViewSpeceficController {
    associatedtype RootView: UIView
}

extension ViewSpeceficController where Self : UIViewController {
    func view() -> RootView {
        return self.view as! RootView
    }
    
}

