// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let results = try? newJSONDecoder().decode(Results.self, from: jsonData)

import Foundation

// MARK: - Results
class Results : Codable {
    var resultCount: Int?
    var results: [Result]?

    init(resultCount: Int?, results: [Result]?) {
        self.resultCount = resultCount
        self.results = results
    }
}

// MARK: - Result
class Result : Codable {
    var wrapperType, kind: String?
    var artistID, collectionID, trackID: Int?
    var artistName, collectionName, trackName, collectionCensoredName: String?
    var trackCensoredName: String?
    var artistViewURL, collectionViewURL, trackViewURL: String?
    var previewURL: String?
    var artworkUrl30, artworkUrl60, artworkUrl100: String?
    var collectionPrice, trackPrice: Double?
    var releaseDate: String?
    var collectionExplicitness, trackExplicitness: String?
    var discCount, discNumber, trackCount, trackNumber: Int?
    var trackTimeMillis: Int?
    var country, currency, primaryGenreName: String?
    var isStreamable: Bool?

    init(wrapperType: String?, kind: String?, artistID: Int?, collectionID: Int?, trackID: Int?, artistName: String?, collectionName: String?, trackName: String?, collectionCensoredName: String?, trackCensoredName: String?, artistViewURL: String?, collectionViewURL: String?, trackViewURL: String?, previewURL: String?, artworkUrl30: String?, artworkUrl60: String?, artworkUrl100: String?, collectionPrice: Double?, trackPrice: Double?, releaseDate: String?, collectionExplicitness: String?, trackExplicitness: String?, discCount: Int?, discNumber: Int?, trackCount: Int?, trackNumber: Int?, trackTimeMillis: Int?, country: String?, currency: String?, primaryGenreName: String?, isStreamable: Bool?) {
        self.wrapperType = wrapperType
        self.kind = kind
        self.artistID = artistID
        self.collectionID = collectionID
        self.trackID = trackID
        self.artistName = artistName
        self.collectionName = collectionName
        self.trackName = trackName
        self.collectionCensoredName = collectionCensoredName
        self.trackCensoredName = trackCensoredName
        self.artistViewURL = artistViewURL
        self.collectionViewURL = collectionViewURL
        self.trackViewURL = trackViewURL
        self.previewURL = previewURL
        self.artworkUrl30 = artworkUrl30
        self.artworkUrl60 = artworkUrl60
        self.artworkUrl100 = artworkUrl100
        self.collectionPrice = collectionPrice
        self.trackPrice = trackPrice
        self.releaseDate = releaseDate
        self.collectionExplicitness = collectionExplicitness
        self.trackExplicitness = trackExplicitness
        self.discCount = discCount
        self.discNumber = discNumber
        self.trackCount = trackCount
        self.trackNumber = trackNumber
        self.trackTimeMillis = trackTimeMillis
        self.country = country
        self.currency = currency
        self.primaryGenreName = primaryGenreName
        self.isStreamable = isStreamable
    }
}
