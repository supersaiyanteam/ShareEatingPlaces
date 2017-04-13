//
//  HomeViewController.swift
//  ShareEatingPlaces
//
//  Created by iOS Student on 4/11/17.
//  Copyright © 2017 HoangPhan. All rights reserved.
//

import UIKit
import Firebase
class HomeViewController: BaseViewController {

    
    var visible = false
    
    let logoutButton: UIButton = {
        let button = UIButton()
        button.frame = CGRect(x: 100, y: 100, width: 80, height: 20)
        button.layer.cornerRadius = 5
        button.setTitle("Logout", for: .normal)
        button.setTitleColor(UIColor.white, for: .normal)
        button.setTitleColor(UIColor.darkGray, for: .highlighted)
        button.backgroundColor = UIColor.gray
        button.addTarget(self, action: #selector(logout), for: UIControlEvents.touchUpInside)
        return button
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        firebaseListenAuth()
        view.addSubview(logoutButton)
    }

    func logout(){
        try! FIRAuth.auth()?.signOut()
    }
    
    func firebaseListenAuth(){
        FIRAuth.auth()?.addStateDidChangeListener({ (_, user) in
            guard self.visible else {
                return
            }
            
            if user == nil {
                let loginVC = self.storyboard?.instantiateViewController(withIdentifier: "LoginVC") as! LoginViewController
                let nav = BaseNavigationController(rootViewController: loginVC)
                self.present(nav, animated: true, completion: nil)
            }
        })
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        visible = true
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        visible = false
    }
    
    
   

   

}
