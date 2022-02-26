//
//  NetworkManager.swift
//  NewsAppSwiftUI
//
//  Created by MacBook Pro on 26/2/22.
//

import Foundation

class NetworkManager {
    static let shared = NetworkManager()
    
    func fetchData(from urlString: String, with completion: @escaping ([Article]?) -> Void) {
        
        guard let url = URL(string: urlString) else { return }
        
        URLSession.shared.dataTask(with: url) { (data, _, error) in
            if let error = error {
                print(error)
                return
            }
            guard let data = data else { return }
            do {
                let news = try JSONDecoder().decode(ArticlesModel.self, from: data)
                completion(news.articles)
            } catch {
                print(error)
            }
        }.resume()
    }
}
