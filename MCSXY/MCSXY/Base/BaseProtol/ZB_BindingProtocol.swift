//
//  ZB_BindingProtocol.swift
//  MCSXY
//
//  Created by 瞄财网 on 2017/7/12.
//  Copyright © 2017年 瞄财网. All rights reserved.
//

import Foundation


@objc public protocol ZB_BindingProtocol :NSObjectProtocol{
    
    @objc optional func ZB_bindingViewmodels() -> Void
}
