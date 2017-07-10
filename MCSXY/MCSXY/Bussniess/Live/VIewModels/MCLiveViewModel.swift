//
//  MCLiveViewModel.swift
//  MCSXY
//
//  Created by 瞄财网 on 2017/7/10.
//  Copyright © 2017年 瞄财网. All rights reserved.
//

import UIKit

class MCLiveViewModel: MCViewModel {

    override func MC_bindingViewController(viewController: MCViewController?, viewModelHandeler: HandelerBlock?) {
        super.MC_bindingViewController(viewController: viewController, viewModelHandeler: viewModelHandeler)
    }
    override func MC_loadData(dataHandeler: HandelerDataBlock?) {
        super.MC_loadData(dataHandeler: dataHandeler)
        let array = [1,2,3,4,5,6,1,2,3,4,5,6,2,3,4,5,6,2,3,4,5,6,2,3,4,5,6,2,3,4,5,6,2,3,4,5,6,2,3,4,5,6,2,3,4,5,6,2,3,4,5,6,2,3,4,5,6,2,3,4,5,6,2,3,4,5,6,2,3,4,5,6]
        dataHandeler!(array)
    }

}
