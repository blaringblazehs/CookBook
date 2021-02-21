//
//  LoginViewController.swift
//  CookBook
//
//  Created by Himanshu Soni on 20/02/21.
//  Copyright © 2021 Himanshu Soni. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUpProperties()
    }
    
    //sets up the UI Elements
    func setUpProperties(){
        navigationController?.navigationBar.layer.frame.origin.y = 50
    }
    @IBAction func backButtonTapped(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
    

}
