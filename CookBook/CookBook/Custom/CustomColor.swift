//
//  CustomColor.swift
//  CookBook
//
//  Created by Himanshu Soni on 18/02/21.
//  Copyright © 2021 Himanshu Soni. All rights reserved.
//

import Foundation
import ChameleonFramework
struct CustomColor {
    var orange: UIColor!
    init(witFrame : CGRect) {
        let firstColor = UIColor(hexString: "FF8C2B", withAlpha: 1)
        let secondColor = UIColor(hexString: "FF6322", withAlpha: 1)
        orange = UIColor(gradientStyle: .leftToRight, withFrame: witFrame, andColors: [firstColor!,secondColor!])
    }
    
}
