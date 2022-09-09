//
//  UIImageView+AsyncImageLoad.swift
//  Hochschulapp
//
//  Created by Prof. Dr. Nunkesser, Robin on 30.05.17.
//  Copyright © 2017 Hochschule Hamm-Lippstadt. All rights reserved.
//

import UIKit
import AlamofireImage

extension UIImageView {
    public func imageFromUrl(url: URL) {
        self.af_setImage(withURL: url)
    }
}
