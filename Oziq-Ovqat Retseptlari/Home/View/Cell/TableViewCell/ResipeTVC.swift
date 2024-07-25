//
//  ResipeTVC.swift
//  Oziq-Ovqat Retseptlari
//
//  Created by Qudrat on 24/07/24.
//

import UIKit

class ResipeTVC: UITableViewCell {
    
    
    @IBOutlet weak var imageV: UIImageView!
    
    @IBOutlet weak var starsStackV: UIStackView!
    
    @IBOutlet weak var isFovuriteBtn: UIButton!
    
    @IBOutlet weak var nameLbl: UILabel!{
        didSet {
            nameLbl.font = UIFont(name: "Lora-Medium", size: 17)
        }
    }
    
    @IBOutlet weak var timeLbl: UILabel!{
        didSet {
            timeLbl.font = UIFont(name: "Lora", size: 11)
        }
    }
    
    @IBOutlet var starImages: [UIImageView]!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
    
    func setUpCell(item: ResipeDM){
        imageV.image = UIImage(named: item.image)
        nameLbl.text = item.name
        timeLbl.text = item.time
        if item.isFovurite {
            isFovuriteBtn.setImage(UIImage(systemName: "heart"), for: .normal)
        }else {
            isFovuriteBtn.setImage(UIImage(systemName: "heart.fill"), for: .normal)
        }
//        setupStars(rating: 4.5)
    }
    
    private func setupStars(rating: Double) {
        starsStackV.arrangedSubviews.forEach { $0.removeFromSuperview() }
        
        let fullStars = Int(rating)
        let halfStar = rating - Double(fullStars) >= 0.5
        let emptyStars = 5 - fullStars - (halfStar ? 1 : 0)
        
        for i in 0..<fullStars {
            starImages[i].image = UIImage(systemName: "star.fill")
        }
        if halfStar {
            starImages[fullStars].image = UIImage(systemName: "star.leadinghalf.filled")
        }
        if emptyStars > 0 && emptyStars < 5 && fullStars < 5 {
            for i in 4...emptyStars - 1 {
                starImages[i].image = UIImage(systemName: "star")
            }
        }
        
    }
    
    
}
