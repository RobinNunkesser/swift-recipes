//
//  File.swift
//  
//
//  Created by Prof. Dr. Nunkesser, Robin on 15.12.20.
//

import Foundation
import TunesearchCorePorts

public class TunesSearchEngineAdapter : TunesSearchEngine {
    
    public init() {
        
    }
    
    var api = ITunesSearchAPI()
    
    public func getSongs(searchTerm: String, completion: @escaping (Swift.Result<[Track], Error>) -> Void) {
        api.fetchData(searchTerm: searchTerm) {
            completion($0.map({results in results.map({result in result as Track})}))
        }
    }
        
}

extension Result : Track {
    var artworkUrl: URL? {
        get {
            return URL(string: artworkUrl100!)
        }
        set(newValue) {
            artworkUrl100 = newValue?.absoluteString
        }
    }
    
    
}
