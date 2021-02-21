//
//  CustomTextField.swift
//  CookBook
//
//  Created by Himanshu Soni on 20/02/21.
//  Copyright © 2021 Himanshu Soni. All rights reserved.
//

import UIKit

class CustomTextField: UITextField {

    //First loding function
    override init(frame: CGRect) {
        super.init(frame: frame)
        defaultSetUP()
    }
    //First required function
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        defaultSetUP()
    }
    //set up the custom textfield
    func defaultSetUP(){
        layer.borderWidth = 1
               layer.borderColor = UIColor(hexString: "E0E0E0").cgColor
               attributedPlaceholder = NSAttributedString(string: placeholder!, attributes: [NSAttributedString.Key.foregroundColor: UIColor(hexString: "9E9E9E")!])
               layer.sublayerTransform = CATransform3DMakeTranslation(12, 0, 0)
               
    }
    
    
}
