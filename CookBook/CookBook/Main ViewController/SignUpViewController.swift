//
//  SignUpViewController.swift
//  CookBook
//
//  Created by Himanshu Soni on 20/02/21.
//  Copyright © 2021 Himanshu Soni. All rights reserved.
//

import UIKit

class SignUpViewController: UIViewController,UITextFieldDelegate {

    @IBOutlet weak var topConstraint: NSLayoutConstraint!
    
    @IBOutlet weak var nameTextField: CustomTextField!
    
    @IBOutlet weak var emailTextField: CustomTextField!
    
    @IBOutlet weak var passwordTextField: CustomTextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    @IBAction func backButtonTapped(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
    

}

//Mark:- TextField slide up
extension SignUpViewController {
    func textFieldDidBeginEditing(_ textField: UITextField) {
        navigationController?.navigationBar.isHidden = true
        topConstraint.constant = 20
    }
    func textFieldDidEndEditing(_ textField: UITextField) {
        topConstraint.constant = 130
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        navigationController?.navigationBar.isHidden = false
        topConstraint.constant = 130
        textField.resignFirstResponder()
        return true
    }
}
