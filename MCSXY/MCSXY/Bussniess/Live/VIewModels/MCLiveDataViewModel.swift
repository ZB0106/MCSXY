//
//  MCLiveDataViewModel.swift
//  MCSXY
//
//  Created by 瞄财网 on 2017/7/12.
//  Copyright © 2017年 瞄财网. All rights reserved.
//

import UIKit

class MCLiveDataViewModel: ZB_DataViewModel {

    override func ZB_loadData(dataHandeler: ((Any) -> Void)?) {
        let array = [1,2,3,4,5,6,1,2,3,4,5,6,2,3,4,5,6,2,3,4,5,6,2,3,4,5,6,2,3,4,5,6,2,3,4,5,6,2,3,4,5,6,2,3,4,5,6,2,3,4,5,6,2,3,4,5,6,2,3,4,5,6,2,3,4,5,6,2,3,4,5,6,3,4,5,6,2,3,4,5,6,3,4,5,6,2,3,4,5,6,3,4,5,6,2,3,4,5,6,3,4,5,6,2,3,4,5,6,3,4,5,6,2,3,4,5,6]
        if dataHandeler != nil {
            dataHandeler!(array)
        }
    }
}
