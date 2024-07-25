//
//  SideMenu.swift
//  Oziq-Ovqat Retseptlari
//
//  Created by Qudrat on 24/07/24.
//

import UIKit

class SideMenu: UIViewController,ViewSpeceficController {
    typealias RootView = SideView
    

    override func viewDidLoad() {
        super.viewDidLoad()

        setAnimation()
    }

    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.navigationBar.isHidden = true
    }
    
    
//    MARK: Actions
    
    @IBAction func homeTapped(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func fovuritesTapped(_ sender: Any) {
        self.navigationController?.pushViewController(FovuritesVC(), animated: true)
    }
    
    
    @IBAction func backView(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
    
    
//     MARK: Functions
    
    func setAnimation() {
        UIView.animate(withDuration: 0.4,delay: 0) {
            self.view.frame.origin.x = self.view.frame.width + 1000
        } completion: { _ in
            UIView.animate(withDuration: 0.6, delay: 0) {
                self.view.transform = .identity
            }
        }
    }
    
    

}
