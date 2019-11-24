//
//  WebService.swift
//  NetworkingSwiftUI
//
//  Created by Kenneth on 11/24/19.
//  Copyright © 2019 Connections.Digital. All rights reserved.
//

import Foundation

class Webservice {
    
    func getPosts(completion: @escaping ([Post]?) -> ()) {
        
        guard let url = URL(string: "https://connections.digital/wp-json/wp/v2/posts/") else {
            fatalError("Invalid URL")
        }
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            
            guard let data = data, error == nil else {
                DispatchQueue.main.async {
                    completion(nil)
                }
                return
            }
            
            let post = try? JSONDecoder().decode([Post].self, from: data)
            
            DispatchQueue.main.async {
                completion(post)
            }
            
        }.resume()
        
    }
    
}
