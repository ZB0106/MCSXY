//
//  ZB_BindingViewModelProtocol.swift
//  MCSXY
//
//  Created by LoveXLD on 2017/7/10.
//  Copyright © 2017年 瞄财网. All rights reserved.
//

import Foundation

@objc public protocol ZB_BindingViewModelProtocol :NSObjectProtocol{
    
    @objc optional func bindingViewmodels() -> Void
}
