//
//  Endpoint.swift
//  iTunesClient
//
//  Created by Marcus Klausen on 18/10/2017.
//  Copyright © 2017 Marcus Klausen. All rights reserved.
//

import Foundation

protocol Endpoint {
    var base: String { get }
    var path: String { get }
    var queryItems: [URLQueryItem] { get }
}

extension Endpoint {
    var urlComponents: URLComponents {
        var components = URLComponents(string: base)!
        components.path = path
        components.queryItems = queryItems
        
        return components
    }
    
    var request: URLRequest {
        let url = urlComponents.url!
        return URLRequest(url: url)
    }
}


enum Itunes {
    case search(term: String, media: ItunesMedia?)
    
}
