import Foundation

class Interactor {

    var presenter: TrackPresenter
    
    init(presenter : TrackPresenter) {
        self.presenter = presenter
    }
    
    func execute(request: SearchRequest, displayer: SearchViewController) {
        /*gateway.fetchData(searchTerm: request.term, completion:
            {
                switch $0 {
                case let .success(tracks):
                    var orderedTracks : [String:[TrackViewModel]] = [:]
                    for track in tracks.sorted() {
                        if !orderedTracks.keys.contains(track.collectionName) {
                            orderedTracks[track.collectionName] = []
                        }
                        orderedTracks[track.collectionName]!.append(self.presenter.present(model: track))
                    }
                    displayer.display(result: Result.success(orderedTracks))
                case let .failure(error):
                    displayer.display(result: Result.failure(error))
                }                
        })*/
    }
}
