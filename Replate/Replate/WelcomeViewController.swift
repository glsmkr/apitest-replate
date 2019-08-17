//
//  WelcomeViewController.swift
//  Replate
//
//  Created by Julian A. Fordyce on 8/16/19.
//  Copyright © 2019 Glas Labs. All rights reserved.
//

import UIKit

enum LoginType {
    case login
    case register
}

class WelcomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func registerOrLogin(_ sender: Any) {
        guard let username = usernameTextField.text,
            let password = passwordTextField.text,
            !username.isEmpty,
            !password.isEmpty else { return }
        
        let user = User(username: username, password: password)
        
        if signinType == .register {
            apiController.register(with: user) { error in
                if let error = error {
                    print("Error occurred during sign up: \(error)")
          } // else {
//                    DispatchQueue.main.async {
//                        let alertController = UIAlertController(title: "Sign Up Successful", message: "Now please log in.", preferredStyle: .alert)
//                        let alertAction = UIAlertAction(title: "OK", style: .default, handler: nil)
//                        alertController.addAction(alertAction)
//                        self.present(alertController, animated: true, completion: {
//                            self.signinType = .login
//                            self.loginSegmentedControl.selectedSegmentIndex = 1
//                            self.signInButton.setTitle("Sign In", for: .normal)
//                        })
//                    }
//                }
            }
        }
    }
    
    @IBAction func changeSignType(_ sender: Any) {
    }
    
    
    // MARK: - Properties
    @IBOutlet weak var usernameTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var signInButton: UIButton!
    
    @IBOutlet weak var loginSegmentedControl: UISegmentedControl!
    
    var apiController = APIController()
    var signinType = LoginType.register
    
}

