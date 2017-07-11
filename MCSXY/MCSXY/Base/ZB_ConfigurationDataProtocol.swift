//
//  ZB_ConfigurationData.swift
//  MCSXY
//
//  Created by 瞄财网 on 2017/7/11.
//  Copyright © 2017年 瞄财网. All rights reserved.
//

import Foundation
@objc public protocol ZB_ConfigurationDataProtocol {
  @objc optional func ZB_ConfigurationWithData(ZB_Data :Any?) -> Void
}
