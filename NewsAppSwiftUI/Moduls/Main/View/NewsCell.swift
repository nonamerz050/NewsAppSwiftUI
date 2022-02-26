//
//  NewsCell.swift
//  NewsAppSwiftUI
//
//  Created by MacBook Pro on 26/2/22.
//

import SwiftUI
import SDWebImageSwiftUI

struct NewsCell: View {
    let news: Article
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            WebImage(url: URL(string: news.urlToImage ?? EmptyImage.imgUrl))
                .resizable()
                .aspectRatio(contentMode: .fill)
            Text(news.title ?? "")
                .font(.subheadline)
                .foregroundColor(.black)
                .padding(.horizontal, MagicNumber.x2)
            Text(news.source.name ?? "")
                .modifier(TextLabel(color: .secondary, weight: .light, size: MagicNumber.x2, paddingTop: 0))

        }
    }
}
