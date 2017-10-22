//
//  ItunesError.swift
//  iTunesClient
//
//  Created by Marcus Klausen on 19/10/2017.
//  Copyright © 2017 Marcus Klausen. All rights reserved.
//

import Foundation

enum ItunesError: Error {
    case requestFailed
    case responseUnsuccessful
    case invalidData
    case jsonConversionFailure
    case jsonParsingFailure(message: String)
}
