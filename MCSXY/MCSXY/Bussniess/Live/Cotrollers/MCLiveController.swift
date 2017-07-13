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
        self.viewModelManager? .ZB_loadData()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

extension MCLiveController{

}
