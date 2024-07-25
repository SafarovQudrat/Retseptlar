//
//  Net.swift
//  Oziq-Ovqat Retseptlari
//
//  Created by Qudrat on 25/07/24.
//

import UIKit

enum NetworkError: Error {
    case invalidURL
    case noData
}


class NetworkManager {
    static let shared = NetworkManager()
    private init (){}
    
    
    func fetchData(_ urlString: String,completion: @escaping (Result<[ResipeDM], Error>) -> Void){
        
        guard let encodedString = urlString.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed),
        let url = URL(string: encodedString) else {
               print("Error: Unsupported URL")
               return
           }
        let task = URLSession.shared.dataTask(with: url) { data, response, error in
            if let error = error {
                completion(.failure(error))
                return
            }
            guard let data = data else {
                completion(.failure(NetworkError.noData))
                return
            }
            do {
                let myData = try JSONDecoder().decode([ResipeDM].self, from: data)
                completion(.success(myData))
            }catch{
                completion(.failure(error))
            }
        }
        
        task.resume()
    }
}
