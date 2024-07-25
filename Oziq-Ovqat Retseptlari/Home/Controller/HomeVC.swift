//
//  HomeVC.swift
//  Oziq-Ovqat Retseptlari
//
//  Created by Qudrat on 24/07/24.
//

import UIKit

class HomeVC: UIViewController,ViewSpeceficController {
    typealias RootView = HomeView
    var coordinator: MainCoordinator?
    var dataProvider = HomeDataProvider()
    var viewModel = HomeViewModel()
    var tableItems = [
            ResipeDM(isFovurite: false, image: "cake", forIt: "", name: "Chocolate Cake", time: "10:03", rating: 4.5),
            ResipeDM(isFovurite: false, image: "cup cake", forIt: "", name: "Cup Cake", time: "20:03", rating: 4.5),
            ResipeDM(isFovurite: false, image: "cake", forIt: "", name: "Chocolate Cake", time: "10:03", rating: 4.5),
            ResipeDM(isFovurite: false, image: "cup cake", forIt: "", name: "Cup Cake", time: "20:03", rating: 4.5),
            ResipeDM(isFovurite: false, image: "cake", forIt: "", name: "Chocolate Cake", time: "10:03", rating: 4.5),
            ResipeDM(isFovurite: false, image: "cup cake", forIt: "", name: "Cup Cake", time: "20:03", rating: 4.5),
            ResipeDM(isFovurite: false, image: "cake", forIt: "", name: "Chocolate Cake", time: "10:03", rating: 4.5),
            ResipeDM(isFovurite: false, image: "cup cake", forIt: "", name: "Cup Cake", time: "20:03", rating: 4.5),
            ResipeDM(isFovurite: false, image: "cake", forIt: "", name: "Chocolate Cake", time: "10:03", rating: 4.5),
            ResipeDM(isFovurite: false, image: "cup cake", forIt: "", name: "Cup Cake", time: "20:03", rating: 4.5),
    ]
    var collectionItems = [
            ResipeDM(isFovurite: false, image: "burger", forIt: "Dinner", name: "Chicken Burger", time: "20:03", rating: 4.5),
            ResipeDM(isFovurite: false, image: "image1", forIt: "Breakfast", name: "Toast with Berries", time: "10:03", rating: 4.5),
            ResipeDM(isFovurite: false, image: "burger", forIt: "Dinner", name: "Chicken Burger", time: "20:03", rating: 4.5),
            ResipeDM(isFovurite: false, image: "image1", forIt: "Breakfast", name: "Toast with Berries", time: "10:03", rating: 4.5),
            ResipeDM(isFovurite: false, image: "burger", forIt: "Dinner", name: "Chicken Burger", time: "20:03", rating: 4.5),
            ResipeDM(isFovurite: false, image: "image1", forIt: "Breakfast", name: "Toast with Berries", time: "10:03", rating: 4.5),
            ResipeDM(isFovurite: false, image: "burger", forIt: "Dinner", name: "Chicken Burger", time: "20:03", rating: 4.5),
            ResipeDM(isFovurite: false, image: "image1", forIt: "Breakfast", name: "Toast with Berries", time: "10:03", rating: 4.5),
            ResipeDM(isFovurite: false, image: "burger", forIt: "Dinner", name: "Chicken Burger", time: "20:03", rating: 4.5),
            ResipeDM(isFovurite: false, image: "image1", forIt: "Breakfast", name: "Toast with Berries", time: "10:03", rating: 4.5),
            ResipeDM(isFovurite: false, image: "burger", forIt: "Dinner", name: "Chicken Burger", time: "20:03", rating: 4.5),
    ]
    override func viewDidLoad() {
        super.viewDidLoad()

        apparenceSettings()
        viewModel.getData()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.navigationBar.isHidden = false
    }
    override func viewDidLayoutSubviews() {
        
        
    }

    @objc func menuTapped() {
        self.navigationController?.pushViewController(SideMenu(), animated: false)
    }
    @objc func notificTapped(){
        
    }
    
   @IBAction func searchValueChanged(_ sender: UITextField) {
        dataProvider.tableItems = tableItems.filter { item in
            item.name.lowercased().contains(sender.text! )
        }
        dataProvider.collectionItems = collectionItems.filter { item in
            item.name.lowercased().contains(sender.text! )
        }
       
       if sender.text == "" {
           dataProvider.collectionItems = collectionItems
           dataProvider.tableItems = tableItems
       }
        
        dataProvider.collectionView.reloadData()
        dataProvider.tableView.reloadData()

    }
    
    
    
    

}
//MARK: ApperenceSettings

extension HomeVC {
    func apparenceSettings(){
        let menuBtn = UIBarButtonItem(image: UIImage(named: "menu"), style: .done, target: self, action: #selector(menuTapped))
        let notificBtn = UIBarButtonItem(image: UIImage(named: "alert"), style: .done, target: self, action: #selector(notificTapped))
        self.navigationItem.leftBarButtonItem = menuBtn
        self.navigationItem.rightBarButtonItem = notificBtn
        dataProvider.viewController = self
        dataProvider.collectionView = view().collectionView
        dataProvider.tableView = view().tableView
        dataProvider.collectionItems = collectionItems
        dataProvider.tableItems = tableItems
    }
    
    
    
}
