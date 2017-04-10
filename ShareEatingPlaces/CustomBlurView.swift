//
//  CustomBlurView.swift
//  ShareEatingPlaces
//
//  Created by iOS Student on 4/10/17.
//  Copyright © 2017 HoangPhan. All rights reserved.
//

import Foundation
import UIKit
class CustomBackgroundBlur {
    func CustomImage(view : UIView, alpha: CGFloat) {
        let blurEffect = UIBlurEffect(style: UIBlurEffectStyle.dark)
        let blurEffectView = UIVisualEffectView(effect: blurEffect)
        blurEffectView.alpha = alpha
        blurEffectView.frame = view.bounds
        blurEffectView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        view.addSubview(blurEffectView)
    }
}
