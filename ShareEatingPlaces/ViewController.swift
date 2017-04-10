//
//  ViewController.swift
//  ShareEatingPlaces
//
//  Created by iOS Student on 4/10/17.
//  Copyright © 2017 HoangPhan. All rights reserved.
//

import UIKit
import Firebase
class ViewController: UIViewController {
    let customBackground = CustomBackgroundBlur()
    @IBOutlet weak var login_background_image: UIImageView!
  
    @IBOutlet weak var tx_email: CustomTextField!
    @IBOutlet weak var tx_password: CustomTextField!
    override func viewDidLoad() {
        super.viewDidLoad()
       customBackground.CustomImage(view: login_background_image, alpha: 0.8)
       
    }
    
    @IBAction func action_login(_ sender: UIButton) {
        if let email = tx_email.text, let pass = tx_password.text {
            if email == "" || pass == "" {
                print("Email or password has found")
            }
            else
            {
                FIRAuth.auth()?.signIn(withEmail: email, password: pass, completion: { (users, error) in
                    if error != nil {
                        print(error)
                    }
                    else {
                        print(users?.email)
                    }
                })
            }
        }

    }
    @IBAction func action_signup(_ sender: UIButton) {
       
    }
    


}

