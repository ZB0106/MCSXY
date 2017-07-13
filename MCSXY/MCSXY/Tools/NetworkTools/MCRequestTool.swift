//
//  MCRequestTool.swift
//  MCSXY
//
//  Created by 瞄财网 on 2017/6/22.
//  Copyright © 2017年 瞄财网. All rights reserved.
//

import UIKit
import Alamofire

typealias RequestModelBlock = () -> ZB_NetWorkModel

fileprivate enum ZB_HttpMethod :String{
    case get     = "GET"
    case head    = "HEAD"
    case post    = "POST"
    case put     = "PUT"
    case patch   = "PATCH"
    case delete  = "DELETE"
    case trace   = "TRACE"
    case connect = "CONNECT"
}
class MCRequestTool: NSObject {
    
   static let defaultsessionManager = SessionManager.default
   static let backGroundSessionManager = SessionManager.init(configuration: URLSessionConfiguration.background(withIdentifier: "com.miaocaiwang.MCSXY.ZB_Background"))
    
    static let sharedInsatance = MCRequestTool()
     private override init() {
    
    }
    
}

//mark 请求
extension MCRequestTool {
    
    class func ZB_request(requestModelBlock :RequestModelBlock, requestHandel :HandelerDataBlock<Any>) -> Void {
        let requestModel = requestModelBlock()
        let urlString = requestModel.baseUrl + (requestModel.APIUrl ?? "")
        
        let dataRequest = defaultsessionManager.request(urlString, method: HTTPMethod.init(rawValue: requestModel.httpMethod)!, parameters: requestModel.paragram, headers: requestModel.httpHeader)
        dataRequest.responseData { (response) in
            
        }
    }
}
