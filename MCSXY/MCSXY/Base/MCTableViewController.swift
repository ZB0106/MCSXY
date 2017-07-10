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
    
        return ["\(MCLiveController.classForCoder())":"\(MCLiveTableViewInfos.classForCoder())"]
    }
    
    func classNameAndSpaceName(className: String?) -> String {
        if let clsName = Bundle.main.infoDictionary!["CFBundleExecutable"] {
            return clsName as! String + "." + className!
        } else {
            return ""
        }
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
        
        let tableViewInfo = MCTableViewController.tableViewInfoDict[NSStringFromClass(type(of: self))];
        
        self.tableView = ZB_BaseTableView.init(infoClass: tableViewInfo!)
        self.view .addSubview(tableView!)
    }
    
    
}
