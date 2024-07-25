//
//  Gradient.swift
//  Oziq-Ovqat Retseptlari
//
//  Created by Qudrat on 24/07/24.
//

import UIKit

class Gradient {
    
    static func setupGradient(_ view: UIView ){
        let gradient = CAGradientLayer()
        gradient.colors = [#colorLiteral(red: 0.003921568627, green: 0.003921568627, blue: 0.003921568627, alpha: 1).cgColor, #colorLiteral(red: 0, green: 0, blue: 0, alpha: 0).cgColor ]
        gradient.startPoint = CGPoint(x: 0, y: 0)
        gradient.endPoint = CGPoint(x: 0.0, y: 1.0)
        gradient.frame = view.bounds
        view.layer.sublayers?.removeAll(where: { $0 is CAGradientLayer })
        view.layer.insertSublayer(gradient, at: 0)
    }
    
    
    
    static func setupLoginGradient(_ view: UIView){
        let gradient = CAGradientLayer()
        gradient.colors = [#colorLiteral(red: 0.003921568627, green: 0.003921568627, blue: 0.003921568627, alpha: 1).cgColor, #colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.2).cgColor ]
        gradient.startPoint = CGPoint(x: 0.5, y: 1)
        gradient.endPoint = CGPoint(x: 0.5, y: 0)
        gradient.frame = view.bounds
        view.layer.sublayers?.removeAll(where: { $0 is CAGradientLayer })
        view.layer.insertSublayer(gradient, at: 0)
    }
}


