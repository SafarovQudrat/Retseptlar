//
//  Coordinator.swift
//  Oziq-Ovqat Retseptlari
//
//  Created by Qudrat on 24/07/24.
//

import UIKit

protocol Coordinator {
    var childCoordinators: [Coordinator] { get set }
    var navigationController: UINavigationController { get set }
    
    func start()
}


final class MainCoordinator: Coordinator {
    var childCoordinators: [Coordinator] = []
    
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    
    func start() {
        let vc = LoginVC()
        navigationController.pushViewController(vc, animated: false)
    }
    
    func pushToHomeVC(){
        let vc = HomeVC()
        vc.coordinator = self
        navigationController.pushViewController(vc, animated: true)
    }
     
}
