//
//  TracksTableViewController.swift
//  TuneSearch
//
//  Created by Prof. Dr. Nunkesser, Robin on 20.12.18.
//  Copyright © 2018 Hochschule Hamm-Lippstadt. All rights reserved.
//

import UIKit

class TracksTableViewController : UITableViewController {
    
    // MARK: - Properties
    
    var collections : [CollectionViewModel]!
    
    // MARK: - Methods
    // MARK: Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // MARK: UITableViewDataSource
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return collections.count
    }
    
    override func tableView(_ tableView: UITableView,
                            titleForHeaderInSection section: Int) -> String? {
        return collections[section].name
    }

    override func tableView(_ tableView: UITableView,
                            numberOfRowsInSection section: Int) -> Int {
        return collections[section].tracks.count
    }
    
    override func tableView(_ tableView: UITableView,
                            cellForRowAt indexPath: IndexPath)
        -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier:
                TrackTableViewCell.reuseIdentifier,
                                                     for: indexPath) as! TrackTableViewCell
            let item = collections[indexPath.section].tracks[indexPath.row]
            cell.titleLabel.text = item.title
            cell.subtitleLabel.text = item.subtitle
            cell.collectionImage.imageFromUrl(url: item.image)
            return cell
    }
    
}

