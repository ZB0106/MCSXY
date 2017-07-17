//
//  MCLiveDataViewModel.swift
//  MCSXY
//
//  Created by 瞄财网 on 2017/7/12.
//  Copyright © 2017年 瞄财网. All rights reserved.
//

import UIKit

class MCLiveWillDataViewModel: ZB_DataTableViewModel {

    
    override func ZB_loadData(dataHandeler: ((Any) -> Void)?, failureHandeler: handelerFailureBlock?) {
        
        MCRequestTool .ZB_request(requestModelBlock: { () -> ZB_NetWorkModel in
            
            return MCLiveWillRequestModel.init()
            
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
