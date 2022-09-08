//
//  ViewController.swift
//  BasicInteraction
//
//  Created by Prof. Dr. Nunkesser, Robin on 08.09.22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var entryTextField: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func process(_ sender: Any) {
        let text = entryTextField.text?.uppercased()
        resultLabel.text = text
    }
    
}

