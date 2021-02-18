//
//  LoginSignUpViewController.swift
//  CookBook
//
//  Created by Himanshu Soni on 18/02/21.
//  Copyright © 2021 Himanshu Soni. All rights reserved.
//

import UIKit

class LoginSignUpViewController: UIViewController {

    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var dontHaveAccountLabel: UILabel!
    @IBOutlet weak var signUpButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpProperties()
        
    }
    
    //sets up UI elements
    func setUpProperties(){
        //Login Button
        let orange = CustomColor(witFrame: loginButton.frame).orange
        loginButton.layer.backgroundColor = orange?.cgColor
        loginButton.layer.cornerRadius = loginButton.layer.frame.height/2
        
        //SignUP Button
        signUpButton.layer.borderWidth = 2
        signUpButton.layer.borderColor = orange?.cgColor
        signUpButton.layer.cornerRadius = signUpButton.layer.frame.height/2
        
    }

}
