//
//  MCTableViewController.swift
//  MCSXY
//
//  Created by 瞄财网 on 2017/6/19.
//  Copyright © 2017年 瞄财网. All rights reserved.
//

import UIKit


class MCTableViewController: MCListController {
    var _tableView :ZB_BaseTableView?
    fileprivate(set) var tableView :ZB_BaseTableView?{
        get{
            return _tableView
        }
        set{
            _tableView = newValue
        }
    }
    
    static var tableViewInfoDict:Dictionary<String, String> {
        
        return [NSObject.classNameAndSpaceName(className: "MCLiveController"):NSObject.classNameAndSpaceName(className: "MCLiveTableViewInfos")]
    }
    
        
    override func viewDidLoad() {
        super.viewDidLoad()
        
        }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

extension MCTableViewController{
    override func makeConstraintsForUI() {
        super.makeConstraintsForUI()
        self.tableView?.frame = CGRect.init(x: 0, y: 0, width: Screen_Width, height: Screen_Height)
    }
    
    override func addSubViews() {
        super.addSubViews()
        
        let cls = NSStringFromClass(type(of: self))
        let tableViewInfo = MCTableViewController.tableViewInfoDict[cls];
        
        self.tableView = ZB_BaseTableView.init(infoClass: tableViewInfo!)
        self.view .addSubview(tableView!)
    }
    
    
}
