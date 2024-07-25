//
//  LoginView.swift
//  Oziq-Ovqat Retseptlari
//
//  Created by Qudrat on 24/07/24.
//

import UIKit

final class LoginView: CustomView {

    @IBOutlet weak var backView: UIView!
    
    @IBOutlet weak var titleLbl: UILabel!{
        didSet{
            titleLbl.font = UIFont(name: "Lora-SemiBold", size: 36)
            
        }
    }
    
    @IBOutlet weak var textLbl: UILabel!{
        didSet{
            textLbl.font = UIFont(name: "Lora", size: 16)
        }
    }
    
    @IBOutlet weak var loginLbl: UILabel!{
        didSet{
            loginLbl.font = UIFont(name: "Lora-SemiBold", size: 32)
            
        }
    }
    
    @IBOutlet weak var emailTf: UITextField!{
        didSet{
            emailTf.font = UIFont(name: "Lora", size: 16)
            emailTf.attributedPlaceholder = NSAttributedString(
                string: "Email Address",
                attributes: [NSAttributedString.Key.foregroundColor: UIColor.white])
        }
    }
    
    @IBOutlet weak var passwordTf: UITextField!{
        didSet{
            passwordTf.font = UIFont(name: "Lora", size: 16)
            passwordTf.attributedPlaceholder = NSAttributedString(
                string: "Password",
                attributes: [NSAttributedString.Key.foregroundColor: UIColor.white])
        }
    }
    
    @IBOutlet weak var forgotBtn: UIButton!{
        didSet{
            forgotBtn.titleLabel?.font = UIFont(name: "Lora", size: 16)
        }
    }
  
    
    @IBOutlet weak var loginBtn: UIButton!{
        didSet{
            loginBtn.layer.borderColor = UIColor.white.cgColor
            loginBtn.layer.borderWidth = 2
            loginBtn.titleLabel?.font = UIFont(name: "Lora-Medium", size: 24)
        }
    }
    
    @IBOutlet weak var notRegisterLbl: UILabel!{
        didSet{
            notRegisterLbl.font = UIFont(name: "Lora", size: 16)
        }
    }
    
    @IBOutlet weak var registerBtn: UIButton!{
        didSet{
            registerBtn.titleLabel?.font = UIFont(name: "Lora", size: 16)
        }
    }
    
    
    
}
