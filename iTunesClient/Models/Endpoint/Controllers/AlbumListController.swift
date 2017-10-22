//
//  AlbumListController.swift
//  iTunesClient
//
//  Created by Marcus Klausen on 17/10/2017.
//  Copyright © 2017 Marcus Klausen. All rights reserved.
//

import UIKit

class AlbumListController: UITableViewController {
    
    let client = ItunesAPIClient()
    
    private struct Constants {
        
        // static is when the property belongs to the object rather than the instance
        static let AlbumCellHeight: CGFloat = 80
    }
    
    var artist: Artist? {
        didSet {
            self.title = artist?.name
            dataSource.update(with: artist!.albums)
            tableView.reloadData()
        }
    }
    
    var dataSource = AlbumListDataSource(albums: [])

    override func viewDidLoad() {
        super.viewDidLoad()
    
        
        tableView.dataSource = dataSource

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - Table View delegate
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return Constants.AlbumCellHeight
    }
    
    // MARK: - Navigation
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showAlbum" {
            if let selectedIndexPath = tableView.indexPathForSelectedRow {
                let selectedAlbum = dataSource.album(at: selectedIndexPath)
                
                
                client.lookupAlbum(withID: selectedAlbum.id) { album, error in
                    let albumDetailController = segue.destination as! AlbumDetailController
                    albumDetailController.album = album
                    albumDetailController.tableView.reloadData()
                }
                
            }
        }
    }

}
