//
//  ZB_TableViewManagerModel.swift
//  MCSXY
//
//  Created by 瞄财网 on 2017/7/12.
//  Copyright © 2017年 瞄财网. All rights reserved.
//

import Foundation

class ZB_TableViewManagerModel: ZB_ViewManagerModel {
    
    var _tableView :ZB_BaseTableView?
    fileprivate(set) var tableView :ZB_BaseTableView?{
        get{
            return _tableView
        }
        set{
            _tableView = newValue
        }
    }
    
    static var tableViewInfoDict = [NSObject.classNameAndSpaceName(className: "MCLiveViewManager"):NSObject.classNameAndSpaceName(className: "MCLiveTableViewInfos")]
    
    override func makeConstraintsForUI() {
        super.makeConstraintsForUI()
        self.tableView?.frame = CGRect.init(x: 0, y: 0, width: (self.viewController?.view.zb_width!)!, height: (self.viewController?.view.zb_height!)!)
    }
    
    override func addSubViews() {
        super.addSubViews()
        
        let cls = NSStringFromClass(type(of: self))
        let tableViewInfo = ZB_TableViewManagerModel.tableViewInfoDict[cls];
        
        self.tableView = ZB_BaseTableView.init(infoClass: tableViewInfo!)
        self.viewController?.view .addSubview(tableView!)
    }
    
    override func ZB_bindingViewModelForView() {
        
    }
}
