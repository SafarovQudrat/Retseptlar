//
//  ResipeVC.swift
//  Oziq-Ovqat Retseptlari
//
//  Created by Qudrat on 24/07/24.
//

import UIKit

class ResipeVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        apparenceSettings()
    }

    @objc func backBtnTapped(){
        
    }
    

    
}
extension ResipeVC {
    func apparenceSettings(){
        let backBtn = UIBarButtonItem(image: UIImage(named: "backImage 1"), style: .done, target: self, action: #selector(backBtnTapped))
        let notificBtn = UIBarButtonItem(image: UIImage(named: "alert"), style: .done, target: self, action: .none)
        self.navigationItem.leftBarButtonItem = backBtn
        self.navigationItem.rightBarButtonItem = notificBtn
        
    }
}
