//
//  WelcomeViewController.swift
//  Replate
//
//  Created by Julian A. Fordyce on 8/16/19.
//  Copyright © 2019 Glas Labs. All rights reserved.
//

import UIKit

class WelcomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func registerOrLogin(_ sender: Any) {
    }
    
    @IBAction func changeSignType(_ sender: Any) {
    }
    
    
    // MARK: - Properties
    @IBOutlet weak var usernameTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var signInButton: UIButton!
    
    @IBOutlet weak var loginSegmentedControl: UISegmentedControl!
    
}

