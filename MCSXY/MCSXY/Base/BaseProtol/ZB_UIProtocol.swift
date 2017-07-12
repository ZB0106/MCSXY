//
//  MCUIProtocol.swift
//  MCSXY
//
//  Created by 瞄财网 on 2017/6/19.
//  Copyright © 2017年 瞄财网. All rights reserved.
//

import Foundation

@objc public protocol ZB_UIProtocol :NSObjectProtocol{
    
   @objc optional func addSubViews()
   @objc optional func makeConstraintsForUI()
}
