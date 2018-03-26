//
//  login.swift
//  Senior Project
//
//  Created by Malik Hawkins on 3/26/18.
//  Copyright © 2018 Rolman De los Santos. All rights reserved.
//

import UIKit
import Firebase
import FirebaseDatabase


class login: UIViewController {
    
    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var passwordField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func SignIn(_ sender: Any){
        if let email = emailField.text, let password = passwordField.text{
            Auth.auth().signIn(withEmail: email, password: password) { (user, error) in
                // ...
            }
        }
    }


}
