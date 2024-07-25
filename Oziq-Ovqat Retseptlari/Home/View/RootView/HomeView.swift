//
//  HomeView.swift
//  Oziq-Ovqat Retseptlari
//
//  Created by Qudrat on 24/07/24.
//

import UIKit

final class HomeView: CustomView {
    
    @IBOutlet weak var todaysRecipeLbl: UILabel!{
        didSet{
            todaysRecipeLbl.font = UIFont(name: "Lora-Medium", size: 16)
        }
    }
    
    @IBOutlet weak var recommendedLbl: UILabel!{
        didSet{
            recommendedLbl.font = UIFont(name: "Lora-Medium", size: 16)
        }
    }
    
    @IBOutlet var seeAllBtn: [UIButton]!{
        didSet{
            for i in seeAllBtn{
                i.titleLabel?.font = UIFont(name: "Lora-Medium", size: 18)
            }
        }
    }
    
    @IBOutlet weak var nameLbl: UILabel!{
        didSet{
            nameLbl.font = UIFont(name: "Lora", size: 20)
        }
    }
    
    @IBOutlet weak var welcomeLbl: UILabel!{
        didSet{
            welcomeLbl.font = UIFont(name: "Lora", size: 20)
        }
    }
    
    @IBOutlet weak var textLbl: UILabel!{
        didSet{
            textLbl.font = UIFont(name: "Lora-SemiBold", size: 30)
        }
    }
    
    @IBOutlet weak var searchV: UIView!{
        didSet{
            searchV.layer.borderColor = UIColor.white.cgColor
            searchV.layer.borderWidth = 2
            searchV.layer.cornerRadius = 10
        }
    }
    
    @IBOutlet weak var searchBtn: UIButton!{
        didSet{
            searchBtn.layer.cornerRadius = 10
            searchBtn.layer.borderColor = UIColor.white.cgColor
            searchBtn.layer.borderWidth = 2
        }
    }
    
    @IBOutlet weak var searchTF: UITextField!{
        didSet {
            searchTF.font = UIFont(name: "Lora", size: 14)
            searchTF.attributedPlaceholder = NSAttributedString(
                string: "Search Recipe",
                attributes: [NSAttributedString.Key.foregroundColor: UIColor.white])
        }
    }
    
    
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    @IBOutlet weak var tableView: UITableView!
    
    
    
    
    
}
