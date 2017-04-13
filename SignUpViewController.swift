//
//  SignUpVC.swift
//  ShareEatingPlaces
//
//  Created by iOS Student on 4/11/17.
//  Copyright © 2017 HoangPhan. All rights reserved.
//

import UIKit
import Firebase
class SignUpViewController: BaseViewController {
    let customBackground = CustomBackgroundBlur()
    @IBOutlet weak var background_sign_up_image: UIImageView!
    
    @IBOutlet weak var tf_email_signup: CustomTextField!
    
    @IBOutlet weak var tf_password_signup: CustomTextField!
    
    @IBOutlet weak var tf_username_signup: CustomTextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        customBackground.CustomImage(view: background_sign_up_image, alpha: 0.4)
    }
    
    @IBAction func action_register(_ sender: UIButton) {
        if let email = tf_email_signup.text, let pass = tf_password_signup.text {
            if email == "" || pass == "" {
                print("Email or password has found")
            }
            else {
                FIRAuth.auth()?.createUser(withEmail: email, password: pass, completion: { (user, error) in
                    if error != nil {
                        let alert = UIAlertController(title: "Alert", message: "Register is unsussesful", preferredStyle: UIAlertControllerStyle.alert)
                        alert.addAction(UIAlertAction.init(title: "OK", style: .default, handler:nil))
                         self.present(alert, animated: true, completion: nil)
                    }
                    else {
                        let alert = UIAlertController(title: "Alert", message: "Register is sussesful", preferredStyle: UIAlertControllerStyle.alert)
                        alert.addAction(UIAlertAction.init(title: "Back to login", style: .default, handler: { (action) in
                            self.navigationController?.popViewController(animated: true)
                        }))

                        self.present(alert, animated: true, completion: nil)
                    }
                })
                
            }
        }
    }
    
    
}
