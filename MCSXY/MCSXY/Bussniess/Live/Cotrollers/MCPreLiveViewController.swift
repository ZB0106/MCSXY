//
//  MCPreViewLiveController.swift
//  MCSXY
//
//  Created by 瞄财网 on 2017/7/17.
//  Copyright © 2017年 瞄财网. All rights reserved.
//

import Foundation
class MCPreLiveViewController: MCTableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.viewModelManager? .ZB_loadData()
        self.view.backgroundColor = Color_Blue
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

extension MCPreLiveViewController{
    
}
