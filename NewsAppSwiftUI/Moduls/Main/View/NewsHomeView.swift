//
//  NewsHomeView.swift
//  NewsAppSwiftUI
//
//  Created by MacBook Pro on 26/2/22.
//

import SwiftUI

struct NewsHomeView: View {
    
    @ObservedObject private var viewModel = NewsViewModel()
    @State private var offset = CGSize.zero
    
    init() {
        viewModel.load()
    }
    var body: some View {
        NavigationView {
            ZStack {
                ScrollView {
                    LazyVStack {
                        ForEach(self.viewModel.news, id: \.url) { article in
                            NavigationLink(destination: NewsDetailView(article: article), label: {
                                NewsCell(news: article)
                            })
                        }
                    }
                }.navigationTitle(Text("NewsApi"))
            }
        }
    }
}
