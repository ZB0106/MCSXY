//
//  MCLivePreDataViewModel.swift
//  MCSXY
//
//  Created by 瞄财网 on 2017/7/17.
//  Copyright © 2017年 瞄财网. All rights reserved.
//

import Foundation
import SwiftyJSON

class MCLivePreDataViewModel: ZB_DataTableViewModel {
    
    
    override func ZB_loadData(dataHandeler: ((Any) -> Void)?, failureHandeler: handelerFailureBlock?) {
        super.ZB_loadData(dataHandeler: dataHandeler, failureHandeler: failureHandeler)
        MCRequestTool .ZB_request(requestModelBlock: { () -> ZB_NetWorkModel in
            
            return MCLivePreRequestModel.init()
            
        }, requestHandel: { (json) in
            
            if let dataHandeler = dataHandeler {
                //对json数据进行处理
                if let json = json as? JSON {
                    let array = json["data"]["page"].arrayValue
                    var arrayM :Array<JSON> = []
                    for json in array{
                        var jsM = json
                        jsM[cellHeight] = 110.0
                        arrayM .append(jsM)
                    }
                    
                    let jsonArray :JSON = [[headerHeight:0.01, footerHeight:0.01, cellDataArray:arrayM]]
                    dataHandeler(jsonArray.arrayValue)
                }
            }
            
        }) { (error) in
            if let failureHandeler = failureHandeler {
                failureHandeler(error)
            }
        }
    }
}

