//
//  Model.swift
//  Oziq-Ovqat Retseptlari
//
//  Created by Qudrat on 24/07/24.
//

import UIKit


struct ResipeDM: Codable {
    var isFovurite: Bool
    var image: String
    var forIt: String
    var name: String
    var time: String
    var rating: Double
}
