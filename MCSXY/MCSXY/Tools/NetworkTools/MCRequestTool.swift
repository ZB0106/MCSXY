//
//  MCRequestTool.swift
//  MCSXY
//
//  Created by 瞄财网 on 2017/6/22.
//  Copyright © 2017年 瞄财网. All rights reserved.
//

import UIKit
import Alamofire

class MCRequestTool: NSObject {
    
    static let sharedInsatance = MCRequestTool()
     private override init() {
    
    }
    
    class func ZB_request(requestModel :ZB_NetWorkModel, requestHandel :HandelerDataBlock<Any>) -> Void {
        let dRe : DataRequest = Alamofire.request("fdafa", method: HTTPMethod.post, parameters: requestModel.paragram, encoding:URLEncoding.default, headers: requestModel.httpHeader)
        
    }
}
