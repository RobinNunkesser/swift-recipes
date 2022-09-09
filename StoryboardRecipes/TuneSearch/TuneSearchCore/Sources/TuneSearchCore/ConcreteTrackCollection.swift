//
//  File.swift
//  
//
//  Created by Prof. Dr. Nunkesser, Robin on 16.12.20.
//

import Foundation
import TunesearchCorePorts

class ConcreteTrackCollection : TrackCollection  {
    internal init(name: String, tracks: [Track]) {
        self.name = name
        self.tracks = tracks
    }
    
    var name: String
    
    var tracks: [Track]
    
    
}
