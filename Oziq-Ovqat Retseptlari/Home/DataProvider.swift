//
//  DataProvider.swift
//  Oziq-Ovqat Retseptlari
//
//  Created by Qudrat on 24/07/24.
//

import UIKit


final class HomeDataProvider: NSObject,UITableViewDelegate,UITableViewDataSource,UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {
    weak var tableView: UITableView!{
        didSet{
            tableView.delegate = self
            tableView.dataSource = self
            tableView.register(UINib(nibName: "ResipeTVC", bundle: nil), forCellReuseIdentifier: "ResipeTVC")
        }
    }
    weak var collectionView: UICollectionView!{
        didSet {
            collectionView.delegate = self
            collectionView.dataSource = self
            collectionView.register(UINib(nibName: "ResipeCVC", bundle: nil), forCellWithReuseIdentifier: "ResipeCVC")
        }
    }
    weak var viewController: UIViewController?
    
    var tableItems: [ResipeDM] = []
    var collectionItems: [ResipeDM] = [ ]
    
    
    
    init(viewController: UIViewController? = nil) {
        self.viewController = viewController
    }
    
    
    
    
//    MARK: TableView
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        viewController?.navigationController?.pushViewController(ResipeVC(), animated: true)
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        tableItems.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "ResipeTVC", for: indexPath) as? ResipeTVC else {return UITableViewCell()}
        cell.selectionStyle = .none
        cell.isFovuriteBtn.tag = indexPath.row
        cell.isFovuriteBtn.addTarget(self, action: #selector(likeTapped), for: .touchUpInside)
        cell.setUpCell(item: tableItems[indexPath.row])
        return cell
    }
    
    @objc func likeTapped(_ sender: UIButton){
        
    }
    
    
    
// MARK: CollectionView
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        collectionItems.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ResipeCVC", for: indexPath) as? ResipeCVC else {return UICollectionViewCell()}
        cell.isFovuriteBtn.tag = indexPath.item
        cell.isFovuriteBtn.addTarget(self, action: #selector(likeBtnTapped), for: .touchUpInside)
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: (collectionView.frame.width - 50)/2, height: collectionView.frame.height)
    }
    
    
    @objc func likeBtnTapped(_ sender: UIButton) {
        
    }
    
    
    
    
    
}
