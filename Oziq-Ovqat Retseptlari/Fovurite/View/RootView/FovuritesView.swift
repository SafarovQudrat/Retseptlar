//
//  FovuritesView.swift
//  Oziq-Ovqat Retseptlari
//
//  Created by Qudrat on 24/07/24.
//

import UIKit

final class FovuritesView: CustomView {
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
    
    @IBOutlet weak var tableView: UITableView!
    
    @IBOutlet weak var fovuritesTitleLbl: UILabel!{
        didSet{
            fovuritesTitleLbl.font = UIFont(name: "Lore", size: 24)
        }
    }
    
    
    
}
