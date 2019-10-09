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
            
            // The nav bar is either white (translucent not checked) or 0.8 alpha white (all colors go light-version, like light red) if translucent is checked.  This is a bug as entire screen should be same color including the nav bar.  So what's going wrong in MY XCode?
            view.backgroundColor = myColor.color
        }
    }
}
