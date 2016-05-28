//
//  RoundedImage.swift
//  my-hood
//
//  Created by Daniel Freire on 27/05/16.
//  Copyright © 2016 Daniel Freire. All rights reserved.
//

import UIKit

class RoundedImage: UIImageView {

    override func awakeFromNib() {
        self.layer.cornerRadius = self.frame.size.width / 2
        self.layer.masksToBounds = true
    }

}
