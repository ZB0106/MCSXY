//
//  ZB_ViewManagerModel.swift
//  MCSXY
//
//  Created by 瞄财网 on 2017/7/12.
//  Copyright © 2017年 瞄财网. All rights reserved.
//

import Foundation

class ZB_ViewManagerModel: NSObject, ZB_ViewModelProtocol, ZB_UIProtocol{
   fileprivate(set) weak var viewController :MCViewController?
    
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
        
    }
}
