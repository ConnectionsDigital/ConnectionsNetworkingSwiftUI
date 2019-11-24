//
//  ContentView.swift
//  NetworkingSwiftUI
//
//  Created by Kenneth on 11/24/19.
//  Copyright © 2019 Connections.Digital. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject private var postListVM = PostListViewModel()
    
    var body: some View {
        
        List(self.postListVM.post, id: \.id) { post in
            VStack(alignment: .leading) {
                Text(post.title.rendered)
                    .font(.title)
                Text(post.content.rendered)
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
