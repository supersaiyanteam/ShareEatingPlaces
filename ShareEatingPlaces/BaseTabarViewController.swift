//
//  BaseTabarViewController.swift
//  ShareEatingPlaces
//
//  Created by iOS Student on 4/11/17.
//  Copyright © 2017 HoangPhan. All rights reserved.
//

import UIKit

class BaseTabarViewController: UITabBarController,UITabBarControllerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
       
    }
    override func viewWillAppear(_ animated: Bool) {
        
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        
        let homeVC = storyboard.instantiateViewController(withIdentifier: "homeVC") as! HomeViewController
        let searchVC = storyboard.instantiateViewController(withIdentifier: "searchVC") as! SearchLocationViewController
        let userVC = storyboard.instantiateViewController(withIdentifier: "userVC") as! UserCotroller
        let homeNav = BaseNavigationController(rootViewController: homeVC)
        let searchNav = BaseNavigationController(rootViewController: searchVC)
        let userNav = BaseNavigationController(rootViewController: userVC)
        viewControllers = [homeNav,searchNav,userNav]
        settingNavForEachController(viewcontroller: homeVC, tranparent: false, navTitle: "Home", tabbarTitle: "Home", image: "home", selectedImage: "home-selected")
        settingNavForEachController(viewcontroller: searchVC, tranparent: false, navTitle: "Search", tabbarTitle: "", image: "search", selectedImage: "search-selected")
        settingNavForEachController(viewcontroller: userVC, tranparent: false, navTitle: "UserProfile", tabbarTitle: "User", image: "user", selectedImage: "user-selected")
    }
    
    func settingNavForEachController(viewcontroller: BaseViewController , tranparent :Bool , navTitle :String , tabbarTitle :String, image: String, selectedImage: String)  {
        viewcontroller.navigationItem.title = navTitle
        viewcontroller.tabBarItem = UITabBarItem(title: tabbarTitle, image: UIImage(named: image)?.withRenderingMode(.alwaysTemplate), selectedImage: UIImage(named: selectedImage)?.withRenderingMode(.alwaysOriginal))
        viewcontroller.tranparent = tranparent
    }

}
