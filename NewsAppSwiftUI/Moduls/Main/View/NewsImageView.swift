//
//  NewsImageView.swift
//  NewsAppSwiftUI
//
//  Created by MacBook Pro on 26/2/22.
//

import SwiftUI
import SDWebImageSwiftUI

struct NewsImageView: View {
    var imageURL: String
    var body: some View {
        ScrollView{
            VStack (alignment: .center){
                WebImage(url: URL(string: imageURL))
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .cornerRadius(15)
                    .padding(.horizontal, MagicNumber.x2)
            }
        }
    }
}

