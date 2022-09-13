//
//  ViewController.swift
//  JSONPlaceholder
//
//  Created by Prof. Dr. Nunkesser, Robin on 13.09.22.
//

import UIKit
import JSONPlaceholderInfrastructure

class ViewController: UIViewController {

    @IBOutlet weak var bodyLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var userIdLabel: UILabel!
    @IBOutlet weak var idLabel: UILabel!
    @IBOutlet weak var idTextField: UITextField!
    
    let api = JSONPlaceholderAPI()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func readPost(_ sender: Any) {
        let idString = idTextField.text
        let id = Int(idString ?? "")
        guard let id = id else { return }
        api.readPost(id: id) {
            switch $0 {
            case let .success(post):
                DispatchQueue.main.async {
                self.idLabel.text = "\(post.id)"
                self.userIdLabel.text = "\(post.userId)"
                self.titleLabel.text = post.title
                self.bodyLabel.text = post.body
                }
            case let .failure(error):
                debugPrint(error.localizedDescription)
            }
            
        }
    }
    
}

