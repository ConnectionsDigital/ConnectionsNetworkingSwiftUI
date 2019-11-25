//
//  Post.swift
//  NetworkingSwiftUI
//
//  Created by Kenneth on 11/24/19.
//  Copyright © 2019 Connections.Digital. All rights reserved.
//

import Foundation

struct Post: Codable {
    let id: Int
    let title: WordpressText
    let content: WordpressProtectedText
}

struct WordpressText: Codable {
    var rendered: String
}

struct WordpressProtectedText: Codable {
    var rendered: String
    var protected: Bool
}
