//
//  LoginViewController.swift
//  CookBook
//
//  Created by Himanshu Soni on 20/02/21.
//  Copyright © 2021 Himanshu Soni. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController,UITextFieldDelegate {

    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var topConstraint: NSLayoutConstraint!
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

//Mark: - Text Field Slides up
extension LoginViewController {
    func textFieldDidBeginEditing(_ textField: UITextField) {
        navigationController?.navigationBar.isHidden = true
        topConstraint.constant = CGFloat(0)
    }
    func textFieldDidEndEditing(_ textField: UITextField) {
        topConstraint.constant = CGFloat(109)
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        navigationController?.navigationBar.isHidden = false
        topConstraint.constant = CGFloat(109)
        textField.resignFirstResponder()
        return true
    }
}
