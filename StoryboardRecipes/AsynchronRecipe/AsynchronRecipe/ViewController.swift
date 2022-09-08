//
//  ViewController.swift
//  AsynchronRecipe
//
//  Created by Prof. Dr. Nunkesser, Robin on 08.09.22.
//

import UIKit

class ViewController: UIViewController {

    // MARK: - Methods
    // MARK: Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
        asyncCall() {
            switch $0 {
            case let .success(value): debugPrint(value)
            case let .failure(error): debugPrint(error)
            }
        }        
    }

    // MARK: Custom methods

    func asyncCall(completion: @escaping (Result<String, Error>) -> Void) {
        DispatchQueue.global(qos: .userInitiated).async {
            sleep(4)
            DispatchQueue.main.async {
                completion(.success("My return value"))
            }
        }
    }


}

