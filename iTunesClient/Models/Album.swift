//
//  Album.swift
//  iTunesClient
//
//  Created by Marcus Klausen on 16/10/2017.
//  Copyright © 2017 Marcus Klausen. All rights reserved.
//

import Foundation

class Album {
    let id: Int
    let artistName: String
    let name: String
    let censoredName: String
    let artworkUrl: String
    let isExplicit: Bool
    let numberOfTracks: Int
    let releaseDate: Date
    let primaryGenre: Genre
    var songs = [Song]()
    
    init(id: Int, artistName: String, name: String, censoredName: String, artworkUrl: String, isExplicit: Bool, numberOfTracks: Int, releaseDate: Date, primaryGenre: Genre) {
        self.id = id
        self.artistName = artistName
        self.name = name
        self.censoredName = censoredName
        self.artworkUrl = artworkUrl
        self.isExplicit = isExplicit
        self.numberOfTracks = numberOfTracks
        self.releaseDate = releaseDate
        self.primaryGenre = primaryGenre
    }
}
