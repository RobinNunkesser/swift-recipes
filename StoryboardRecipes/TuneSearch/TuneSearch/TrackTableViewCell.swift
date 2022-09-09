//
//  TrackTableViewCell.swift
//  TuneSearch
//
//  Created by Prof. Dr. Nunkesser, Robin on 08.01.19.
//  Copyright © 2019 Hochschule Hamm-Lippstadt. All rights reserved.
//

import UIKit

class TrackTableViewCell: UITableViewCell {
    
    // MARK: Properties
    static let reuseIdentifier = "TrackCell"
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var subtitleLabel: UILabel!
    @IBOutlet weak var collectionImage: UIImageView!
    }
