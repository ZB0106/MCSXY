//
//  ZB_NetWorkModel.swift
//  MCSXY
//
//  Created by 瞄财网 on 2017/7/12.
//  Copyright © 2017年 瞄财网. All rights reserved.
//

import UIKit

class ZB_NetWorkModel: NSObject {

    var paragram :Dictionary<String,Any>?
    var isNeedWIFI :Bool = false
    var isCache :Bool = false
    var isShowLoading :Bool = false
    var isNeedRetry :Bool = false
    var baseUrl :String = MiaoCaiBaseUrl
    var APIUrl :String?
   fileprivate(set) var httpHeader :Dictionary<String,String>?
    var httpMethod :String = "POST"
    
}

class MCLiveRequestModel: ZB_NetWorkModel {
    override init() {
        super.init()
        self.APIUrl = API_LiveList
    }
}
