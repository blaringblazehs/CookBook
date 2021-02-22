//
//  LoginSignUpViewController.swift
//  CookBook
//
//  Created by Himanshu Soni on 18/02/21.
//  Copyright © 2021 Himanshu Soni. All rights reserved.
//

import UIKit

class LoginSignUpViewController: UIViewController {

    @IBOutlet weak var loginButton: CustomButton!
    @IBOutlet weak var dontHaveAccountLabel: UILabel!
    @IBOutlet weak var signUpButton: CustomButton!
    @IBOutlet weak var CookBookLabel: CustomLabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpProperties()
        
    }
    
    //sets up UI elements
    func setUpProperties(){
        signUpButton.makeCustomWhiteButton()
        CookBookLabel.setSpacing(space: 3)
    }
    

}
