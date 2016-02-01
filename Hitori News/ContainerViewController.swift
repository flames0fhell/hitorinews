//
//  ContainerViewController.swift
//  Hitori News
//
//  Created by Hitori Achmad on 1/31/16.
//  Copyright © 2016 Hitori Achmad. All rights reserved.
//

import Foundation
import SlideMenuControllerSwift
class ContainerViewController: SlideMenuController {
    
    override func awakeFromNib() {
        if let controller = self.storyboard?.instantiateViewControllerWithIdentifier("Main") {
            self.mainViewController = controller
        }
        if let controller = self.storyboard?.instantiateViewControllerWithIdentifier("Left") {
            self.leftViewController = controller
        }
        
        super.awakeFromNib()
    }
    
}