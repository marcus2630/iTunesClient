//
//  QueryItemProvider.swift
//  iTunesClient
//
//  Created by Marcus Klausen on 19/10/2017.
//  Copyright © 2017 Marcus Klausen. All rights reserved.
//

import Foundation

protocol QueryItemProvider {
    var queryItem: URLQueryItem { get }
}
