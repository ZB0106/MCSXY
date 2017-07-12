//
//  MCFetchDataProtocol.swift
//  MCSXY
//
//  Created by 瞄财网 on 2017/7/12.
//  Copyright © 2017年 瞄财网. All rights reserved.
//

import Foundation

public typealias HandelerDataBlock<T> = (_ ZB_data :T) -> Void


@objc public protocol ZB_FetchDataProtocol :NSObjectProtocol{
    
    @objc optional func ZB_loadData(dataHandeler :HandelerDataBlock<Any>?) -> Void
}
