//
//  ViewController.swift
//  Hitori News
//
//  Created by Hitori Achmad on 1/31/16.
//  Copyright © 2016 Hitori Achmad. All rights reserved.
//

import UIKit
import Alamofire
class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
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

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

