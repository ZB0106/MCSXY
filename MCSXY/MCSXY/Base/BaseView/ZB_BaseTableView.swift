//
//  ZB_BaseTableView.swift
//  SWiftCoreDemo
//
//  Created by 瞄财网 on 2017/7/10.
//  Copyright © 2017年 瞄财网. All rights reserved.
//

import UIKit

class ZB_BaseTableView: UITableView {
    var _dataArray :Array<Any>?
    var dataArray : Array<Any>?{
        set{
            _dataArray = newValue
            self .reloadData()
        }
        get{
            return _dataArray
        }
    }
    var tableViewInfos :MCBaseTableViewInfos?
    
    
    convenience init(infoClass :String){
        self.init(frame: CGRect.zero, style: UITableViewStyle.plain)
        
        
        if let tableViewInfosType = NSClassFromString(infoClass) as? MCBaseTableViewInfos.Type {
            
            self.tableViewInfos = tableViewInfosType.init()
            if ((self.tableViewInfos?.infos?.count) != 0) {
                for tableViewInfo in (self.tableViewInfos?.infos)! {
                    if (tableViewInfo.cellClass != nil) {
                        self .register(NSClassFromString(tableViewInfo.cellClass!), forCellReuseIdentifier: tableViewInfo.cellClass!)
                    }
                    if (tableViewInfo.groupClass != nil) {
                        self.register(NSClassFromString(tableViewInfo.groupClass!), forHeaderFooterViewReuseIdentifier: tableViewInfo.groupClass!)
                    }
                    
                }
            }
            
        } else {
            
        }
        
        self.delegate = self;
        self.dataSource = self;

    }
}

extension ZB_BaseTableView:UITableViewDelegate,UITableViewDataSource{
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1;
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return (self.dataArray?.count)!
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let tableInfo = self.tableViewInfos?.infos?.last
        let cell = tableView .dequeueReusableCell(withIdentifier: (tableInfo?.cellClass)!) as? MCTableViewCell
        cell?.ZB_ConfigurationWithData(ZB_Data: nil)
        return cell!
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 44.0
    }
    
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        return nil
    }
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 0.1
    }

    
    func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        return nil
    }
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return 0.1
    }
}
