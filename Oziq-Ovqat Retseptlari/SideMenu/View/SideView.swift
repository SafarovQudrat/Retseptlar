//
//  SideView.swift
//  Oziq-Ovqat Retseptlari
//
//  Created by Qudrat on 24/07/24.
//

import UIKit


final class SideView: CustomView {
    
    
    @IBOutlet weak var nameLbl: UILabel!{
        didSet{
            nameLbl.font = UIFont(name: "Lora", size: 27)
        }
    }
    
    @IBOutlet weak var homeBtn: UIButton!{
        didSet{
            homeBtn.titleLabel?.font = UIFont(name: "Lora", size: 24)
        }
    }
    
    @IBOutlet weak var fovuritesBtn: UIButton!{
        didSet{
            fovuritesBtn.titleLabel?.font = UIFont(name: "Lora", size: 24)
        }
    }
    
    
    @IBOutlet weak var historyBtn: UIButton!{
        didSet{
            historyBtn.titleLabel?.font = UIFont(name: "Lora", size: 24)
        }
    }
    
   
    @IBOutlet weak var helpBtn: UIButton!{
        didSet{
            helpBtn.titleLabel?.font = UIFont(name: "Lora", size: 24)
        }
    }
    
    
    @IBOutlet weak var logoutBtn: UIButton!{
        didSet{
            logoutBtn.titleLabel?.font = UIFont(name: "Lora", size: 24)
        }
    }
    
    
    
}
