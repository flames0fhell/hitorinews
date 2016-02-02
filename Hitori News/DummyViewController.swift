//
//  DummyViewController.swift
//  Hitori News
//
//  Created by Hitori Achmad on 2/2/16.
//  Copyright © 2016 Hitori Achmad. All rights reserved.
//

import UIKit

class DummyViewController: UIViewController {

    @IBOutlet weak var textLabel: UILabel!
    
    var cLabel : String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        textLabel.text = cLabel
        self.setNavigationBarItem()
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
