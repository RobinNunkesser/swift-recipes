//  Created by Prof. Dr. Nunkesser, Robin on 26.10.16.
//  Copyright © 2016 Hochschule Hamm-Lippstadt. All rights reserved.
//

import Foundation

class TrackEntity : Codable, Comparable{
    static func < (lhs: TrackEntity, rhs: TrackEntity) -> Bool {
        if lhs.collectionName != rhs.collectionName {
            return lhs.collectionName < rhs.collectionName
        }
        if lhs.discNumber != rhs.discNumber {
            return lhs.discNumber ?? 0 < rhs.discNumber ?? 0
        }
        return lhs.trackNumber ?? 0 < rhs.trackNumber ?? 0
    }
    
    static func == (lhs: TrackEntity, rhs: TrackEntity) -> Bool {
        return (lhs.collectionName == rhs.collectionName) &&
            (lhs.trackNumber == rhs.trackNumber) &&
        (lhs.discNumber == rhs.discNumber)
    }
    
    let trackNumber: Int?
    let trackCount: Int
    let artistName: String
    let trackName: String?
    let collectionName: String
    let discNumber: Int?
    let discCount: Int?
    let primaryGenreName: String
    let artworkUrl60: URL
    let artworkUrl100: URL
    
    init(trackNumber: Int, trackCount: Int, artistName: String, trackName: String, collectionName: String, discNumber: Int, discCount: Int, primaryGenreName: String, releaseYear: String, artworkUrl60: URL, artworkUrl100: URL) {
        self.trackNumber = trackNumber
        self.trackCount = trackCount
        self.artistName = artistName
        self.trackName = trackName
        self.collectionName = collectionName
        self.discNumber = discNumber
        self.discCount = discCount
        self.primaryGenreName = primaryGenreName
        self.artworkUrl60 = artworkUrl60
        self.artworkUrl100 = artworkUrl100
    }
    
}
