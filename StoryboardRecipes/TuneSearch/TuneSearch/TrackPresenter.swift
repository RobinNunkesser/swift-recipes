//
//  TrackPresenter.swift
//  TuneSearch
//
//  Created by Prof. Dr. Nunkesser, Robin on 07.01.19.
//  Copyright © 2019 Hochschule Hamm-Lippstadt. All rights reserved.
//

import Foundation
import TunesearchCorePorts

class TrackPresenter {
    
    func present(model: Track) -> TrackViewModel {
        var title = ""
        if let trackNumber = model.trackNumber {
            title = "\(trackNumber) -"
        }
        if let trackName = model.trackName {
            title = title + "\(trackName)"
        }
        return TrackViewModel(title: title, subtitle: model.artistName!, image: model.artworkUrl!)
    }

}

