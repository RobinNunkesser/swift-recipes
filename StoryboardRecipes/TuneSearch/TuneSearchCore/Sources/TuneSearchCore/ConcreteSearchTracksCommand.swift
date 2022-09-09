//
//  File 2.swift
//  
//
//  Created by Prof. Dr. Nunkesser, Robin on 16.12.20.
//

import Foundation
import TunesearchCorePorts

public class ConcreteSearchTracksCommand : SearchTracksCommand {
    public init(tunesSearchEngine: TunesSearchEngine) {
        self.tunesSearchEngine = tunesSearchEngine
    }
    
    let tunesSearchEngine : TunesSearchEngine
    
    public func execute(inDTO: SearchTerm, completion: @escaping (Result<[TrackCollection], Error>) -> Void) {
        tunesSearchEngine.getSongs(searchTerm: inDTO.term) {
            completion($0.map {
                tracks in
                var collections : [String:TrackCollection] = [:]
                for track in tracks.sorted(by: self.trackCompare) {
                    if !collections.keys.contains(track.collectionName!) {
                        collections[track.collectionName!] = ConcreteTrackCollection(name: track.collectionName!, tracks: [])
                    }
                    collections[track.collectionName!]!.tracks.append(track)
                }
                let values = Array(collections.values)
                return values
            })
            
        }
    }
    
    func trackCompare(lhs: Track, rhs: Track) -> Bool {
        if lhs.collectionName != rhs.collectionName {
            return lhs.collectionName ?? "" < rhs.collectionName ?? ""
        }
        if lhs.discNumber != rhs.discNumber {
            return lhs.discNumber ?? 0 < rhs.discNumber ?? 0
        }
        return lhs.trackNumber ?? 0 < rhs.trackNumber ?? 0
        
    }
    
}

