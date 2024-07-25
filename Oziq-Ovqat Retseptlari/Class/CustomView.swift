//
//  CustomView.swift
//  Oziq-Ovqat Retseptlari
//
//  Created by Qudrat on 24/07/24.
//
import UIKit

class CustomView: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setBackground()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setBackground()
    }
    
    func setBackground(){
        self.backgroundColor = #colorLiteral(red: 0.1176470444, green: 0.1176470444, blue: 0.1176470444, alpha: 1)
        Gradient.setupGradient(self)
        
    }
    
}

