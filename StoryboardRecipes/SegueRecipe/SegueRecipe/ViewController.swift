//  ViewController.swift
//  SegueRecipe

import UIKit

class ViewController: UITableViewController {

    // MARK: Navigation
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        switch segue.identifier {
        case "SendDataDemo"?:
            let destination = segue.destination as! ReceiveViewController
            destination.text = "Hello world!"
        case "ReceiveDataDemo"?: break
        default: debugPrint("No or unknown identifier")
        }
    }
    
    @IBAction func unwindTo(sender: UIStoryboardSegue) {
        if let source = sender.source as? UnwindViewController {
           tableView.cellForRow(at: IndexPath(row: 1, section: 0))?
            .detailTextLabel?.text = source.returnValue
        }
    }
}

