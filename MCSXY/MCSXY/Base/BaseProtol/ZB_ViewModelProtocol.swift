//
//  MCViewModelProtocol.swift
//  MCSXY
//
//  Created by 瞄财网 on 2017/7/10.
//  Copyright © 2017年 瞄财网. All rights reserved.
//

import Foundation

public typealias HandelerBlock = () -> Void

@objc public protocol ZB_ViewModelProtocol: NSObjectProtocol{

    @objc optional func ZB_bindingViewController(viewController :MCViewController?, viewModelHandeler :HandelerBlock?) -> Void
    
    @objc optional func ZB_bindingViewModelForView() -> Void
    
    @objc optional func ZB_bindingViewMangerModel(viewController :MCViewController?, viewModelHandeler :HandelerBlock?) -> Void
    
    @objc optional func ZB_bindingViewEventModel(view :MCView?, viewModelHandeler :HandelerBlock?) -> Void
}
