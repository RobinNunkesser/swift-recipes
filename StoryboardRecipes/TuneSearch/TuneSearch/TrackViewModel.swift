//
//  TrackViewModel.swift
//  TuneSearch
//
//  Created by Prof. Dr. Nunkesser, Robin on 07.01.19.
//  Copyright © 2019 Hochschule Hamm-Lippstadt. All rights reserved.
//

import Foundation

class TrackViewModel {
    let title : String
    let subtitle : String
    let image: URL
    
    init(title : String, subtitle : String, image: URL) {
        self.title = title
        self.subtitle = subtitle
        self.image = image
    }
}
