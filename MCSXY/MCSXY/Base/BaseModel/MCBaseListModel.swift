//
//  MCBaseListModel.swift
//  MCSXY
//
//  Created by 瞄财网 on 2017/7/14.
//  Copyright © 2017年 瞄财网. All rights reserved.
//

import Foundation

class MCBaseListModel<T>: NSObject {
    var pageIndex :String?;
    var pageSize :String?;
    var totalCount :String?;
    var pageCount :String?;
    var page :Array<T>?;
}

class MCVideoListModel: MCBaseListModel<Any> {
    
}
