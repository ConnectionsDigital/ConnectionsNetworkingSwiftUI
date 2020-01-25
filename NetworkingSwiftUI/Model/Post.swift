//
//  Post.swift
//  NetworkingSwiftUI
//
//  Created by Kenneth on 11/24/19.
//  Copyright © 2019 Connections.Digital. All rights reserved.
//

import Foundation

public struct Post: Codable {
    let id: Int
    let title: WordpressText
    let content: WordpressProtectedText
}

public struct WordpressText: Codable {
    var rendered: String
}

public struct WordpressProtectedText: Codable {
    var rendered: String
    var protected: Bool
}
