//
//  NewsViewModel.swift
//  NewsAppSwiftUI
//
//  Created by MacBook Pro on 26/2/22.
//

import SwiftUI

class NewsViewModel: ObservableObject {
    @Published var news: [Article] = []
    
    func load() {
        getNews(urlString: API.urlString)
    }
    
    private func getNews(urlString: String) {
        NetworkManager.shared.fetchData(from: urlString, with: { newsArticles in
            guard let articles = newsArticles else { return }
            DispatchQueue.main.async { [weak self] in
                guard let self = self else { return }
                self.news = articles
            }

        })
    }
}
