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
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

extension MCLiveController{
 
    override func ZB_bindingViewmodels() {
        let liveManager = MCLiveViewManager.init()
        liveManager .ZB_bindingViewMangerModel(viewController: self) { 
            () -> Void in
            
        }
        
        let liveDataViewModel = MCLiveDataViewModel .init()
        liveDataViewModel.ZB_loadData { (array) in
            liveManager.tableView?.dataArray = array as? Array
       }
    }
}
