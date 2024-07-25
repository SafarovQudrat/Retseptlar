//
//  ResipeCVC.swift
//  Oziq-Ovqat Retseptlari
//
//  Created by Qudrat on 24/07/24.
//

import UIKit

class ResipeCVC: UICollectionViewCell {

    @IBOutlet weak var imageV: UIImageView!
    
    @IBOutlet weak var isFovuriteBtn: UIButton!
    
    @IBOutlet weak var isForLbl: UILabel!{
        didSet{
            isForLbl.font = UIFont(name: "Lora", size: 11)
        }
    }
    
    @IBOutlet weak var nameLbl: UILabel!{
        didSet{
            isForLbl.font = UIFont(name: "Lora", size: 11)
        }
    }
    
    @IBOutlet weak var timeLbl: UILabel!{
        didSet{
            isForLbl.font = UIFont(name: "Lora", size: 11)
        }
    }
    
    @IBOutlet weak var starsStackV: UIStackView!
    
    @IBOutlet var starImages: [UIImageView]!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    
    func setUpCell(item: ResipeDM){
        imageV.image = UIImage(named: item.image)
        nameLbl.text = item.name
        isForLbl.text = item.forIt
        timeLbl.text = item.time
        if item.isFovurite {
            isFovuriteBtn.setImage(UIImage(systemName: "heart"), for: .normal)
        }else {
            isFovuriteBtn.setImage(UIImage(systemName: "heart.fill"), for: .normal)
        }
        setupStars(rating: 4.5)
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
