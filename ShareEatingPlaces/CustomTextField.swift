//
//  CustomTextField.swift
//  ShareEatingPlaces
//
//  Created by iOS Student on 4/10/17.
//  Copyright © 2017 HoangPhan. All rights reserved.
//

import UIKit
@IBDesignable
class CustomTextField: UITextField {
    @IBInspectable var leftImage: UIImage? {
        didSet {
            updateView()
        }
    }
    @IBInspectable var leftPadding:CGFloat = 0 {
        didSet {
            updateView()
        }
    }
    @IBInspectable var cornerRadius: CGFloat = 0 {
        didSet {
            layer.cornerRadius = cornerRadius
        }
    }
    func updateView() {
        if let image = leftImage {
            leftViewMode = .always
            let imageView = UIImageView(frame: CGRect(x: leftPadding, y: 0, width: 20, height: 20))
            imageView.image = image
            var width = leftPadding + 20
            if borderStyle == UITextBorderStyle.none || borderStyle == UITextBorderStyle.line {
                width = width + 5
            }
            let view = UIView(frame: CGRect(x: 0, y: 0, width: width, height: 20))
            view.addSubview(imageView)
            leftView = view
        }
        else {
            leftViewMode = .never
        }
    }
    
}
