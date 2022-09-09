//
//  UIViewController+ErrorAlert.swift
//  Hochschulapp
//
//  Created by Prof. Dr. Nunkesser, Robin on 06.07.17.
//  Copyright © 2017 Hochschule Hamm-Lippstadt. All rights reserved.
//

import UIKit

extension UIViewController {
    public func present(error: Error,
                        handler: ((UIAlertAction) -> Swift.Void)?) {
        let alertView = UIAlertController(
            title: NSLocalizedString("Error", comment: ""),
            message: error.localizedDescription,
            preferredStyle: .alert)
        let okAction = UIAlertAction(
            title: NSLocalizedString("OK", comment: ""),
            style: .default,
            handler: nil)
        alertView.addAction(okAction)        
        self.present(alertView, animated: true, completion: nil)
    }
}
