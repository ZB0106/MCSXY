//
//  MCViewModelProtocol.swift
//  MCSXY
//
//  Created by 瞄财网 on 2017/7/10.
//  Copyright © 2017年 瞄财网. All rights reserved.
//

import Foundation

public typealias HandelerBlock = () -> Void
public typealias HandelerDataBlock = (_ dataArray :Array<Any>) -> Void

@objc public protocol MCViewModelProtocol: NSObjectProtocol{

   
    @objc optional func MC_bindingViewController(viewController :MCViewController?, viewModelHandeler :HandelerBlock?) -> Void
    
    @objc optional func MC_bindingView(view :MCView?, viewModelHandeler :HandelerBlock?) -> Void
    
    @objc optional func MC_loadData(dataHandeler :HandelerDataBlock?) -> Void
}
