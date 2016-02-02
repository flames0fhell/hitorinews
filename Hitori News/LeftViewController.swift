//
//  LeftViewController.swift
//  Hitori News
//
//  Created by Hitori Achmad on 2/2/16.
//  Copyright © 2016 Hitori Achmad. All rights reserved.
//

import UIKit
import Alamofire
class LeftViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    //@IBOutlet weak var leftTable: UITableView!
    @IBOutlet weak var leftTable: UITableView!
    let textCellIdentifier = "TextCell"
    
    var pData = [String]()
    
    var dummyVC : UIViewController!
    
    var halaman = [String]()
    
    func loadData(){
        Alamofire.request(.GET, "http://webservice.foodr.id/tes").responseJSON { response in
            switch response.result{
            case .Success(let data_list):
                //sukses
                let data_json = JSON(data_list)
                let data = data_json["data"].arrayValue
                for v in data{
                    self.pData.append(v["title"].stringValue)
                }
                self.leftTable.reloadData()
                
            case .Failure(let errorhint):
                //error
                print(errorhint)
            }
            
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        leftTable.delegate = self
        leftTable.dataSource = self
        self.loadData()
        
        let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
        
        let nextViewController = storyBoard.instantiateViewControllerWithIdentifier("Dummy") as! DummyViewController
        self.dummyVC = UINavigationController(rootViewController: nextViewController)
        
        
    }
    // MARK:  UITextFieldDelegate Methods
    func numberOfSectionsInTableView(leftTable: UITableView) -> Int {
        return 1
    }
    
    func tableView(leftTable: UITableView, numberOfRowsInSection section: Int) -> Int {
        return pData.count
    }
    
    func tableView(leftTable: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = leftTable.dequeueReusableCellWithIdentifier(textCellIdentifier, forIndexPath: indexPath) as UITableViewCell
        
        let row = indexPath.row
        cell.textLabel?.text = pData[row]
        
        return cell
    }
    // MARK:  UITableViewDelegate Methods
    func tableView(leftTable: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        leftTable.deselectRowAtIndexPath(indexPath, animated: true)
        
        self.slideMenuController()?.changeMainViewController(self.dummyVC, close: true)
        //self.presentViewController(nextViewController, animated:true, completion:nil)
        
        let row = indexPath.row
        let dummyVC = DummyViewController()
        
        dummyVC.cLabel = "hai"
        
        print(pData[row])
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
