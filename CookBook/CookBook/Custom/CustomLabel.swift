//
//  CustomLabel.swift
//  CookBook
//
//  Created by Himanshu Soni on 20/02/21.
//  Copyright © 2021 Himanshu Soni. All rights reserved.
//

import UIKit

class CustomLabel: UILabel {

    //First function to load
    override init(frame: CGRect) {
        super.init(frame: frame)
        defaultSetUp()
    }
    //First required function
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        defaultSetUp()
    }
    
    //set up the default spacing to 1
    func defaultSetUp(){
        //Label Spacing
        let labelSpace = 5
        let labelAttributedString = NSMutableAttributedString(string: text!)
        labelAttributedString.addAttribute(NSAttributedString.Key.kern, value: labelSpace, range: NSMakeRange(0, labelAttributedString.length))
        attributedText = labelAttributedString
        
    }
    
    //Sets the spacing of the text
    func setSpacing(space: CGFloat){
        let labelAttributedString = NSMutableAttributedString(string: text!)
        labelAttributedString.addAttribute(NSAttributedString.Key.kern, value: space, range: NSMakeRange(0, labelAttributedString.length))
        attributedText = labelAttributedString
    }
    
    
}
