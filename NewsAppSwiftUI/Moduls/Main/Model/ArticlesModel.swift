//
//  ArticlesModel.swift
//  NewsAppSwiftUI
//
//  Created by MacBook Pro on 26/2/22.
//

import Foundation

struct ArticlesModel: Codable {
    let articles: [Article]
}

struct Article: Codable {
    let title: String?
    let articleDescription: String?
    let author: String?
    let urlToImage: String?
    let content: String?
    let url: String
    let source: Source
}

struct Source: Codable,Identifiable {
    let id: String?
    let name: String?
}


