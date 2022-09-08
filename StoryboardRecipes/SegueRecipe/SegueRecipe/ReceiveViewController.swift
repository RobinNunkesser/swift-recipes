//  ReceiveViewController.swift
//  SegueRecipe

import UIKit

class ReceiveViewController : UIViewController {
    
    var text : String!
    
    @IBOutlet weak var textLabel: UILabel!
    
    override func viewDidLoad() {
        textLabel.text = text
    }
    
}
