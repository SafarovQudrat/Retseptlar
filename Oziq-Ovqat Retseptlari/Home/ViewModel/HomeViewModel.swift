//
//  HomeViewModel.swift
//  Oziq-Ovqat Retseptlari
//
//  Created by Qudrat on 25/07/24.
//

import UIKit

class HomeViewModel {
    
    func getData () {
        NetworkManager.shared.fetchData("www.themealdb.com/api/json/v1/1/filter.php?c=Breakfast") { result in
            switch result {
            case .success(let data):
                print("Data = \(data)")
                
            case .failure(let error):
                print(error.localizedDescription)
            }
            
            
            
            
            
        }
    }
    
    
}
