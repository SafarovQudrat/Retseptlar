//
//  FovuritesVC.swift
//  Oziq-Ovqat Retseptlari
//
//  Created by Qudrat on 24/07/24.
//

import UIKit

class FovuritesVC: UIViewController,ViewSpeceficController {
    typealias RootView = FovuritesView
    var dataProvider = HomeDataProvider()

    override func viewDidLoad() {
        super.viewDidLoad()
        apparenceSettings()
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.navigationBar.isHidden = true
    }


    
    
    @IBAction func backBtnTapped(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
    
    
    

}

extension FovuritesVC {
    func apparenceSettings(){
        self.navigationController?.apparannceNavBar(self, "Fovurites")
        dataProvider.tableView = view().tableView
        dataProvider.viewController = self
    }
}

