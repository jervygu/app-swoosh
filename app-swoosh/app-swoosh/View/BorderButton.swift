//
//  BorderButton.swift
//  app-swoosh
//
//  Created by Jeff Umandap on 3/4/21.
//

import UIKit

class BorderButton: UIButton {

    override func awakeFromNib() {
        super.awakeFromNib()
        layer.borderWidth = 2.0
        layer.borderColor = UIColor.white.cgColor
    }

} 
