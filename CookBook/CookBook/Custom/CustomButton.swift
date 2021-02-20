//
//  CustomButton.swift
//  CookBook
//
//  Created by Himanshu Soni on 18/02/21.
//  Copyright © 2021 Himanshu Soni. All rights reserved.
//

import UIKit

class CustomButton: UIButton {

    //First Loding function
    override init(frame: CGRect) {
        super.init(frame: frame)
        defaultSetup()
        
    }
    
    //First required loding function
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        defaultSetup()
        
    }
    //customises button to orange background color
    func defaultSetup() {
        let orange = CustomColor(witFrame: frame).orange
        layer.backgroundColor = orange?.cgColor
        layer.cornerRadius = layer.frame.height/2
        layer.masksToBounds = true
        //spacing
        let spacing = 1.5
        let buttonAttributedString = NSMutableAttributedString(string: (titleLabel?.text)!)
        buttonAttributedString.addAttribute(NSAttributedString.Key.kern, value: spacing, range: NSMakeRange(0, buttonAttributedString.length))
        self.setAttributedTitle(buttonAttributedString, for: .normal)
       
        
    }
    func makeCustomWhiteButton(){
        let orange = CustomColor(witFrame: frame).orange
        //SignUp Button
        layer.borderWidth = 2
        backgroundColor = .white
        layer.borderColor = orange?.cgColor
        layer.cornerRadius = layer.frame.height/2
        layer.masksToBounds = true
        
        //Spacing
        let signUpSpacing = 1.5
        let signUpSpacingButtonAttributedString = NSMutableAttributedString(string: (titleLabel?.text)!)
        signUpSpacingButtonAttributedString.addAttribute(NSAttributedString.Key.kern, value: signUpSpacing, range: NSMakeRange(0, signUpSpacingButtonAttributedString.length))
        self.setAttributedTitle(signUpSpacingButtonAttributedString, for: .normal)
        
        
    }
    
}
