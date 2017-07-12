//
//  MCLiveViewManager.swift
//  MCSXY
//
//  Created by 瞄财网 on 2017/7/12.
//  Copyright © 2017年 瞄财网. All rights reserved.
//

import UIKit

class MCLiveViewManager: ZB_TableViewManagerModel {

    var _liveViewModel :MCLiveViewModel?
    fileprivate(set) var liveViewModel :MCLiveViewModel?{
        get{
            return _liveViewModel
        }
        set{
            _liveViewModel = newValue
        }
    }

    override func ZB_bindingViewModelForView() {
        
        self.liveViewModel = MCLiveViewModel.init()
        liveViewModel?.view = self.tableView
    }
}
