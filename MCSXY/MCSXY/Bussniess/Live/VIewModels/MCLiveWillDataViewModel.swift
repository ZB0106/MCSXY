//
//  MCLiveDataViewModel.swift
//  MCSXY
//
//  Created by 瞄财网 on 2017/7/12.
//  Copyright © 2017年 瞄财网. All rights reserved.
//

import UIKit
import SwiftyJSON

class MCLiveWillDataViewModel: ZB_DataTableViewModel {

    
    override func ZB_loadData(dataHandeler: ((Any) -> Void)?, failureHandeler: handelerFailureBlock?) {
        
        MCRequestTool .ZB_request(requestModelBlock: { () -> ZB_NetWorkModel in
            
            return MCLiveWillRequestModel.init()
            
        }, requestHandel: { (json) in
            
            if let dataHandeler = dataHandeler {
                
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
