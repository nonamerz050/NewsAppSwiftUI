//
//  NewsDetailView.swift
//  NewsAppSwiftUI
//
//  Created by MacBook Pro on 26/2/22.
//

import SwiftUI
import SDWebImageSwiftUI

struct NewsDetailView: View {
    @ObservedObject var viewModel = NewsViewModel()
    var article: Article
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 10) {
                NavigationLink(destination: NewsImageView(imageURL: article.urlToImage ?? EmptyImage.imgUrl), label: {
                    WebImage(url: URL(string: article.urlToImage ?? EmptyImage.imgUrl))
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .cornerRadius(15)
                        .padding(.horizontal, MagicNumber.x2)
                })
                HStack {
                    Spacer()
                    VStack(alignment: .trailing){
                        Text("Author: " + (article.author ?? "No author"))
                            .modifier(TextLabel())
                        Text(article.source.name ?? "")
                            .modifier(TextLabel(color: .secondary, paddingTop: 0))
                    }
                }
                Text(article.title ?? "No title")
                    .modifier(TextLabel(weight: .semibold, size: MagicNumber.x3))
                Text(article.content ?? "No Content")
                    .modifier(TextLabel(color: .primary))
            }
        }
    }
}
