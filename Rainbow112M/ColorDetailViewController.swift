//
//  ColorDetailViewController.swift
//  Rainbow112M
//
//  Created by John Pitts on 10/7/19.
//  Copyright © 2019 johnpitts. All rights reserved.
//

import UIKit

class ColorDetailViewController: UIViewController {
    
    
    var myColor: MyColor?

    override func viewDidLoad() {
        super.viewDidLoad()

        updateViews()
    }
    
    
    func updateViews() {
        
        if let myColor = myColor {
            title = myColor.name
            view.backgroundColor = myColor.color
        }
    }
}
