//
//  PostListViewModel.swift
//  NetworkingSwiftUI
//
//  Created by Kenneth on 11/24/19.
//  Copyright © 2019 Connections.Digital. All rights reserved.
//

import Foundation

class PostListViewModel: ObservableObject {
    @Published var post = [PostViewModel]()
    
    init() {
        Webservice().getPosts { post in
            
            if let post = post {
                self.post = post.map(PostViewModel.init)
            }
            
        }
    }

    struct PostViewModel {
        
        var post: Post
        
        init(post: Post) {
            self.post = post
        }
        
        var id: Int {
            return self.post.id
        }
        
        var title: WordpressText {
            return self.post.title.rendered
        }
        
        var content: WordpressProtectedText {
            return self.post.content.rendered
        }
    }
}
