//
//  MCViewModel.swift
//  MCSXY
//
//  Created by 瞄财网 on 2017/6/19.
//  Copyright © 2017年 瞄财网. All rights reserved.
//

import UIKit
//负责展示数据
class MCViewModel: NSObject,ZB_ViewModelProtocol, ZB_ConfigurationDataProtocol {

   weak var view :UIView?
    var viewModelHandeler :HandelerBlock?
    func ZB_ConfigurationWithData(ZB_Data: Any?) {
        
    }
}


