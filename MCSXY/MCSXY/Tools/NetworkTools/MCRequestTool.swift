//
//  MCRequestTool.swift
//  MCSXY
//
//  Created by 瞄财网 on 2017/6/22.
//  Copyright © 2017年 瞄财网. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON

typealias RequestModelBlock = () -> ZB_NetWorkModel
public typealias HandelerDataBlock<T> = (_ ZB_data :T) -> Void
public typealias handelerFailureBlock = (_ failure :Error) -> Void

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
    
    class func ZB_request(requestModelBlock :RequestModelBlock, requestHandel :@escaping HandelerDataBlock<Any>, failureHandel :@escaping handelerFailureBlock) -> Void {
        let requestModel = requestModelBlock()
        let urlString = requestModel.baseUrl + (requestModel.APIUrl ?? "")
        //处理网络请求中的参数
        self .handelRequestModelForSend(requestModel: requestModel)
        
        let dataRequest = defaultsessionManager.request(urlString, method: HTTPMethod.init(rawValue: requestModel.httpMethod)!, parameters: requestModel.paragram, headers: requestModel.httpHeader)
        dataRequest.validate().responseJSON { (response) in
            switch response.result.isSuccess{
            case true:
                 print(response.result.value!)
                if let value = response.result.value {
                    let json = JSON(value)
                    requestHandel(json)
                }
            case false:
                print(response.result.error!)
                if let error  = response.result.error {
                    failureHandel(error)
                }
            }
            //请求完成时处理参数
            self.handelRequestModelForCompletion(requestModel: requestModel)
        }
    }
}

extension MCRequestTool {
    
  class func handelRequestModelForSend(requestModel :ZB_NetWorkModel) -> Void {
        switch requestModel.isShowLoading {
        case .activityView: break
        case .customLoadingView: break
        case .refreshView: break
        case.NotShowLoding: break
            
        }
        
        switch requestModel.isNeedWIFI {
        case true: break
            
        case false: break
        }
    
    }
  class func handelRequestModelForCompletion(requestModel :ZB_NetWorkModel) -> Void {
        
        switch requestModel.isShowLoading {
        case .activityView: break
        case .customLoadingView: break
        case .refreshView: break
        case.NotShowLoding: break
            
        }

    if let alertString = requestModel.alertString {
        
    }
        
        switch requestModel.isCache {
        case .all:
            break
        case .diskCache:
            break
            
        case .memoryCache:
            break
        case .notAllowed:
            break
        }
        
    }
}
