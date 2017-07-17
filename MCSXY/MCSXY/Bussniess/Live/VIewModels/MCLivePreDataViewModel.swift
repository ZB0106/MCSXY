//
//  MCLivePreDataViewModel.swift
//  MCSXY
//
//  Created by 瞄财网 on 2017/7/17.
//  Copyright © 2017年 瞄财网. All rights reserved.
//

import Foundation
class MCLivePreDataViewModel: ZB_DataTableViewModel {
    
    
    override func ZB_loadData(dataHandeler: ((Any) -> Void)?, failureHandeler: handelerFailureBlock?) {
        
        MCRequestTool .ZB_request(requestModelBlock: { () -> ZB_NetWorkModel in
            
            return MCLivePreRequestModel.init()
            
        }, requestHandel: { (json) in
            
            if let dataHandeler = dataHandeler {
                dataHandeler(json)
            }
            
        }) { (error) in
            if let failureHandeler = failureHandeler {
                failureHandeler(error)
            }
        }
    }
}

