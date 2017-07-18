//
//  MCViewModel.swift
//  MCSXY
//
//  Created by 瞄财网 on 2017/6/19.
//  Copyright © 2017年 瞄财网. All rights reserved.
//

import UIKit
//负责展示数据
class ZB_ViewModel: NSObject,ZB_ViewModelProtocol, ZB_ConfigurationDataProtocol {

   required override init() {
        super.init()
    }
   weak var dataView :UIView?
    var viewModelHandeler :HandelerBlock?
    func ZB_ConfigurationWithData(jsonData: Any?) {
        
    }
}


