//
//  PendingOperations.swift
//  iTunesClient
//
//  Created by Marcus Klausen on 22/10/2017.
//  Copyright © 2017 Marcus Klausen. All rights reserved.
//

import Foundation


class PendingOperations {
    var downloadsInProgress = [IndexPath: Operation]()
    
    let downloadQueue = OperationQueue()
}
