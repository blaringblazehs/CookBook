//
//  CustomNavigationController.swift
//  CookBook
//
//  Created by Himanshu Soni on 20/02/21.
//  Copyright © 2021 Himanshu Soni. All rights reserved.
//

import UIKit

class CustomNavigationController: UINavigationController {

    //First Loding Function
    override func viewDidLoad() {
        super.viewDidLoad()
        makeBarInvisible()
    }
    
    //Makes the Navigation Bar Invisible
    func makeBarInvisible(){
        navigationBar.setBackgroundImage(UIImage(), for: .default)
        navigationBar.isTranslucent = true
    }

}
