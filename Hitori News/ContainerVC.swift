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
        
        // Do any additional setup after loading the view, typically from a nib.
        
            
            //mainViewController.addRightBarButtonWithImage(UIImage(named: "fuga")!)
        
        
        
        
        Alamofire.request(.GET, "http://webservice.foodr.id/tes").responseJSON {response in
            switch response.result {
            case .Success(let datalist):
                //print("sukses")
                let data_json = JSON(datalist)
                //print(data_json)
                let datas = data_json["data"].arrayValue
                for data in datas{
                    print(data["title"].stringValue)
                    
                }
                
            case .Failure(let error):
                print("Error")
                print(error)
            }
        }
        
        
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