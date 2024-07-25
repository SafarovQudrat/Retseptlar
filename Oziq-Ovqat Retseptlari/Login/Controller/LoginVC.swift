//
//  LoginVC.swift
//  Oziq-Ovqat Retseptlari
//
//  Created by Qudrat on 24/07/24.
//

import UIKit

class LoginVC: UIViewController,ViewSpeceficController {
    typealias RootView = LoginView
   internal var coordinator: MainCoordinator?{
        didSet {
            guard coordinator != nil else {return}
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        Gradient.setupLoginGradient(view().backView)
    }

    
    @IBAction func forgotBtnTapped(_ sender: UIButton) {
       
    }
    
    @IBAction func googleTapped(_ sender: UIButton) {
    }
    
    @IBAction func facebookBtnTapped(_ sender: Any) {
    }
    
    
    @IBAction func loginBtnTapped(_ sender: UIButton) {
        print("Btn tapped")
        self.navigationItem.backBarButtonItem?.isHidden = true
        self.navigationController?.pushViewController(HomeVC(), animated: true)
    }
    
}
