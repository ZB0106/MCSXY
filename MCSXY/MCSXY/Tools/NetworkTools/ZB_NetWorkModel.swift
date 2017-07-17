//
//  ZB_NetWorkModel.swift
//  MCSXY
//
//  Created by 瞄财网 on 2017/7/12.
//  Copyright © 2017年 瞄财网. All rights reserved.
//

import UIKit



public class ZB_NetWorkModel {

    
    enum ShowLoading {
        case customLoadingView
        case refreshView
        case activityView
        case NotShowLoding
    }
    
    enum UseCache {
        case memoryCache
        case diskCache
        case all
        case notAllowed
    }
    
    enum RequetHandel {
        case retry
        case avoidRetry
        case notHandel
    }

    
    var paragram :Dictionary<String,Any>?
    var isNeedWIFI :Bool = false
    var isCache :UseCache = .notAllowed
    var isShowLoading :ShowLoading = .NotShowLoding
    var isNeedRetry :RequetHandel = .notHandel
    var baseUrl :String = MiaoCaiBaseUrl
    var APIUrl :String?
    var alertString :String?
    
    var httpHeader :Dictionary<String,String> = MCUser.isLogin() ? ["afa":"ff"] : ["faf":"fddsa"]

    var httpMethod :String = "POST"
}

public class MCLiveWillRequestModel: ZB_NetWorkModel {
    override init() {
        super.init()
        self.APIUrl = API_LiveList
    }
}

public class MCLivePreRequestModel :ZB_NetWorkModel {
    override init() {
        super.init()
        self.APIUrl = API_VideoList
    }
}
