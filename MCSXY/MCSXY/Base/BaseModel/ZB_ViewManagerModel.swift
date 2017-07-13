//
//  ZB_ViewManagerModel.swift
//  MCSXY
//
//  Created by 瞄财网 on 2017/7/12.
//  Copyright © 2017年 瞄财网. All rights reserved.
//

import Foundation

class ZB_ViewManagerModel: NSObject, ZB_ViewModelProtocol, ZB_UIProtocol, ZB_FetchDataProtocol{
    
    required override init() {
        super.init()
    }
    
   fileprivate(set) weak var viewController :MCViewController?
    var dataViewModel :ZB_DataViewModel?
    
    func ZB_bindingViewMangerModel(viewController: MCViewController?, viewModelHandeler: HandelerBlock?) {
        self.viewController = viewController
        self.addSubViews()
        self.makeConstraintsForUI()
        
        self.ZB_bindingViewModelForView()
    
    }
    
    
    func addSubViews() {
        
    }
    
    func makeConstraintsForUI() {
        
    }
    
    func ZB_bindingViewModelForView() {
        //在父类中初始化dataviewModel
        let cls = MC_ViewManagerInfos[NSStringFromClass(type(of: self))]
        guard let realCls = NSClassFromString(cls!) as? ZB_DataViewModel.Type else {
            return
        }
        self.dataViewModel = realCls.init()
    }
    func ZB_loadData() -> Void {
        
    }
}
