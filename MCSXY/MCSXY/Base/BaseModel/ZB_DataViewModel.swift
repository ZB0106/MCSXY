//
//  ZB_DataViewModel.swift
//  MCSXY
//
//  Created by 瞄财网 on 2017/7/12.
//  Copyright © 2017年 瞄财网. All rights reserved.
//

import UIKit

class ZB_DataViewModel: NSObject, ZB_FetchDataProtocol, ZB_ViewModelProtocol {
    
    weak var dataView :UIView?
    var viewModel :ZB_ViewModel?
    
    required override init() {
        super.init()
        
    }
    
    func ZB_loadData() {
        let cls =  MC_DataViewModelInfos[NSStringFromClass(type(of:self))]
        if let relCls = NSClassFromString(cls!) as? ZB_ViewModel.Type {
            self.viewModel = relCls.init()
            viewModel?.dataView = self.dataView
            self.ZB_loadData(dataHandeler: { (value) in
                self.viewModel? .ZB_ConfigurationWithData(jsonData:value)
            }, failureHandeler: { (error) in
                
            })
        }
    }
    func ZB_loadData(dataHandeler: ((Any) -> Void)?, failureHandeler: handelerFailureBlock?) {
        
    }

}
