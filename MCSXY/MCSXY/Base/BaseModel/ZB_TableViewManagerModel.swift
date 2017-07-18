//
//  ZB_TableViewManagerModel.swift
//  MCSXY
//
//  Created by 瞄财网 on 2017/7/12.
//  Copyright © 2017年 瞄财网. All rights reserved.
//

import Foundation

class ZB_TableViewManagerModel: ZB_ViewManagerModel {
    
    var tableView :ZB_BaseTableView?
    
    
    override func makeConstraintsForUI() {
        super.makeConstraintsForUI()
        self.tableView?.snp.makeConstraints({ (make) in
            make.right.equalTo(0)
            make.left.equalTo(0)
            make.top.equalTo(0)
            make.bottom.equalTo(0)
        }) 
    }
    
    override func addSubViews() {
        super.addSubViews()
        
        let cls = NSStringFromClass(type(of: self))
        let tableViewInfo = tableViewInfoDict[cls];
        
        self.tableView = ZB_BaseTableView.init(infoClass: tableViewInfo!)
        self.viewController?.view .addSubview(tableView!)
        self.tableView?.backgroundColor = Color_White
    }
    
    override func ZB_bindingViewModelForView() {
        //调用父类的方法创建dataViewmodel，必须super
        super.ZB_bindingViewModelForView()
        
        dataViewModel?.dataView = self.tableView
    }
    override func ZB_loadData() {
        
        self.dataViewModel?.ZB_loadData()
    }
    
    
}
