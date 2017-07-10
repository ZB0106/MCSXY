//
//  MCLiveController.swift
//  MCSXY
//
//  Created by 瞄财网 on 2017/6/19.
//  Copyright © 2017年 瞄财网. All rights reserved.
//

import UIKit

class MCLiveController: MCTableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let liveViewModel = MCLiveViewModel.init()
        liveViewModel.MC_bindingViewController(viewController: self) {
            () -> Void in
        }
        
        liveViewModel.MC_loadData { (array) -> Void in
                self.tableView?.dataArray = array
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
