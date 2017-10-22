//
//  ViewController.swift
//  iTunesClient
//
//  Created by Marcus Klausen on 16/10/2017.
//  Copyright © 2017 Marcus Klausen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let searchEndpoint = Itunes.search(term: "Taylor Swift", media: .music(entity: .musicArtist, attribute: .artistTerm))
        print(searchEndpoint.request)
        
        print("****\n")
        
        let lookupEndpoint = Itunes.lookup(id: 907242701, entity: MusicEntity.album)
        print(lookupEndpoint.request)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

