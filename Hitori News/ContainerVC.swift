//
//  File.swift
//  Hitori News
//
//  Created by Hitori Achmad on 2/1/16.
//  Copyright © 2016 Hitori Achmad. All rights reserved.
//

import Foundation
import SlideMenuControllerSwift
import Alamofire
class ContainerViewController: SlideMenuController {
    override func viewDidLoad() {
        super.viewDidLoad()
        

        
    }
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        print("load will appear container")
        self.setNavigationBarItem()
    }
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