//
//  AlbumCellViewModel.swift
//  iTunesClient
//
//  Created by Marcus Klausen on 17/10/2017.
//  Copyright © 2017 Marcus Klausen. All rights reserved.
//

import Foundation
import UIKit

struct AlbumDetailViewModel {
    let title: String
    let releaseDate: String
    let genre: String
    var artwork: UIImage?
}

extension AlbumDetailViewModel {
    init(album: Album) {
        self.title = album.censoredName
        self.genre = album.primaryGenre.name
        self.artwork = album.artwork
        
        
        let formatter = DateFormatter()
        
        // Locale sets the format to the phones current date format
        formatter.locale = Locale.current
        
        formatter.dateFormat = "MMM dd, yyyy"
        
        self.releaseDate = formatter.string(from: album.releaseDate)
        
    }
}

