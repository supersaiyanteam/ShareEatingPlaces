//
//  BaseViewController.swift
//  ShareEatingPlaces
//
//  Created by iOS Student on 4/11/17.
//  Copyright © 2017 HoangPhan. All rights reserved.
//

import UIKit

class BaseViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    var tranparent: Bool? {
        didSet {
            if tranparent == true {
                setTranparentForNavigationBar()
            }
        }
    }
    var setTitle:String? {
        didSet {
            if let title = setTitle {
                setTitleForBackButton(title: title)
            }
        }
    }
    
    func setTranparentForNavigationBar()  {
        navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
        navigationController?.navigationBar.shadowImage = UIImage()
    }
    func setTitleForBackButton(title:String)  {
        let backButton = UIBarButtonItem()
        backButton.title = title
        navigationItem.backBarButtonItem = backButton
        
    }
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        UIApplication.shared.statusBarStyle = UIStatusBarStyle.lightContent
    }
    
}
