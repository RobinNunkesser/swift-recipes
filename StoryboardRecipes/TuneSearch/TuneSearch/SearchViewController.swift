//
//  ViewController.swift
//  TuneSearch
//
//  Created by Prof. Dr. Nunkesser, Robin on 19.12.18.
//  Copyright © 2018 Hochschule Hamm-Lippstadt. All rights reserved.
//

import UIKit
import TuneSearchCore
import TuneSearchInfrastructure

class SearchViewController: UIViewController {
    var collections : [CollectionViewModel] = []
    
    @IBOutlet weak var searchTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func search(_ sender: UIButton) {
        collections = []
        let service = ConcreteSearchTracksCommand(tunesSearchEngine: TunesSearchEngineAdapter())
        service.execute(inDTO: SearchTermDTO(term: searchTextField.text!)) {
            result in
            switch result {
            case let .success(returnedCollections):
                self.collections = returnedCollections.map({
                    collection in CollectionViewModel(name: collection.name, tracks: collection.tracks.map(
                        {track in TrackPresenter().present(model: track)}))})
                self.performSegue(withIdentifier: "TracksSegue", sender: self)
            case let .failure(error):
                self.present(error: error, handler: nil)
            }
        }
        
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        return identifier != "TracksSegue"
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "TracksSegue" {
            let destination = segue.destination as! TracksTableViewController
            destination.collections = collections
        }
        
    }
    
}
