//
//  ZB_BaseTableView.swift
//  SWiftCoreDemo
//
//  Created by 瞄财网 on 2017/7/10.
//  Copyright © 2017年 瞄财网. All rights reserved.
//

import UIKit
import SwiftyJSON

class ZB_BaseTableView: UITableView {
    var _dataArray :Array<JSON>?
    var dataArray : Array<JSON>?{
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
            if ((self.tableViewInfos?.infos.count) != 0) {
                for tableViewInfo in (self.tableViewInfos?.infos)! {
                    if ((tableViewInfo.cellClass?.characters.count)! > 0) {
                        self .register(NSClassFromString(tableViewInfo.cellClass!), forCellReuseIdentifier: tableViewInfo.cellClass!)
                    }
                    if (tableViewInfo.headerClass != nil) {
                        self.register(NSClassFromString(tableViewInfo.headerClass!), forHeaderFooterViewReuseIdentifier: tableViewInfo.headerClass!)
                    }
                    if (tableViewInfo.footerClass != nil) {
                        self.register(NSClassFromString(tableViewInfo.footerClass!), forHeaderFooterViewReuseIdentifier: tableViewInfo.footerClass!)
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
        return self.dataArray?.count ?? 0;
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let json = self.dataArray?[section][cellDataArray].arrayValue
        return json!.count 
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        var cell :MCTableViewCell?
        if let tableViewInfos = self.tableViewInfos {
             let json = self.dataArray?[indexPath.section][cellDataArray]
            let dictJson = json?[indexPath.row]
            switch tableViewInfos.tableViewStyle {
            case .plain:
                let tableInfo = tableViewInfos.infos.first
                cell = tableView .dequeueReusableCell(withIdentifier: (tableInfo?.cellClass)!) as? MCTableViewCell
                cell?.ZB_ConfigurationWithData(jsonData: dictJson)
            case .group:
                let tableInfo = tableViewInfos.infos[indexPath.section]
                cell = tableView .dequeueReusableCell(withIdentifier: (tableInfo.cellClass)!) as? MCTableViewCell
                cell?.ZB_ConfigurationWithData(jsonData: dictJson)
            }

        } else {
            cell = MCTableViewCell()
        }
        return cell!
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        let json = self.dataArray?[indexPath.section][cellDataArray]
        let dictJson = json?[indexPath.row]
        return CGFloat(dictJson![cellHeight].floatValue)
    }
    
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        if let tableViewInfos = self.tableViewInfos {
            switch tableViewInfos.tableViewStyle {
            case .plain:
                let tableInfo = tableViewInfos.infos.first
                if let headerClass = tableInfo?.headerClass {
                    let headerFooter = tableView.dequeueReusableHeaderFooterView(withIdentifier: headerClass)
                    return headerFooter
                } else {
                    return nil
                }
            case .group:
                let tableInfo = tableViewInfos.infos[section]
                let headerFooter = tableView.dequeueReusableHeaderFooterView(withIdentifier: tableInfo.headerClass!)
                return headerFooter
            }
        } else {
            return nil
        }
    }
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        let json = self.dataArray?[section]
        return CGFloat(json![headerHeight].floatValue)
    }

    
    func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        if let tableViewInfos = self.tableViewInfos {
            switch tableViewInfos.tableViewStyle {
            case .plain:
                let tableInfo = tableViewInfos.infos.first
                if let footerClass = tableInfo?.footerClass {
                    let headerFooter = tableView.dequeueReusableHeaderFooterView(withIdentifier: footerClass)
                    return headerFooter
                } else {
                    return nil
                }
            case .group:
                let tableInfo = tableViewInfos.infos[section]
                let headerFooter = tableView.dequeueReusableHeaderFooterView(withIdentifier: tableInfo.footerClass!)
                return headerFooter
            }
        } else {
            return nil
        }
    }
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        let json = self.dataArray?[section]
        return CGFloat(json![footerHeight].floatValue)
    }
}
