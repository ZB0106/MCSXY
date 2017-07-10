//
//  MCViewModel.swift
//  MCSXY
//
//  Created by 瞄财网 on 2017/6/19.
//  Copyright © 2017年 瞄财网. All rights reserved.
//

import UIKit

class MCViewModel: NSObject,MCViewModelProtocol {

   weak var viewController :MCViewController?
   weak var view :MCView?
    var handelerBlock :HandelerBlock?
    var dataHandeler :HandelerDataBlock?
    
    func MC_bindingViewController(viewController: MCViewController?, viewModelHandeler: HandelerBlock?) {
        self.viewController = viewController
        self.handelerBlock = viewModelHandeler
    }
    func MC_bindingView(view: MCView?, viewModelHandeler: HandelerBlock?) {
        self.view = view
        self.handelerBlock = viewModelHandeler
    }

    func MC_loadData(dataHandeler: HandelerDataBlock?) {
        self.dataHandeler = dataHandeler
    }
}
