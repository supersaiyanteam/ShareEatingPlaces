//
//  CustomButton.swift
//  ShareEatingPlaces
//
//  Created by iOS Student on 4/10/17.
//  Copyright © 2017 HoangPhan. All rights reserved.
//

import UIKit
@IBDesignable
class CustomButton: UIButton {
    override func layoutSubviews() {
        super.layoutSubviews()
    }
    @IBInspectable var cornerRadius:CGFloat = 0{
        didSet {
            layer.cornerRadius = cornerRadius
        }
    }

}
