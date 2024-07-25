//
//  Ex + NavigationController.swift
//  Oziq-Ovqat Retseptlari
//
//  Created by Qudrat on 24/07/24.
//

import UIKit

extension UINavigationController {
    func apparannceNavBar(_ target: UIViewController, _ title: String){
        let appearance = UINavigationBarAppearance()
        appearance.configureWithOpaqueBackground()
        appearance.backgroundColor = .black
        target.navigationController?.navigationBar.standardAppearance = appearance
        target.navigationController?.navigationBar.scrollEdgeAppearance = appearance
        let titleView = UIView()
        let titleLbl = UILabel()
        titleLbl.font = UIFont(name: "Poppins-medium", size: 16)
        titleLbl.textColor = .white
        titleLbl.text = title
        titleView.addSubview(titleLbl)
        NSLayoutConstraint.activate([
            titleLbl.leftAnchor.constraint(equalTo: titleLbl.leftAnchor, constant: 8),
            titleLbl.bottomAnchor.constraint(equalTo: titleLbl.bottomAnchor, constant: 10)
        ])
        
        
        titleView.frame = .init(x: 0, y: 0, width: UIScreen.main.bounds.width, height: 50)
        let backBtn = UIBarButtonItem(image: UIImage(systemName:"chevron.left"), style: .done, target: .none, action: #selector(backBtnTapped))
        target.navigationItem.rightBarButtonItem = backBtn
        target.navigationItem.rightBarButtonItem?.tintColor = .orange
        target.navigationItem.titleView = titleView
    }
    @objc func backBtnTapped() {
        self.navigationController?.popViewController(animated: true)
    }
}
