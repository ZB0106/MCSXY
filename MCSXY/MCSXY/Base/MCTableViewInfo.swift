//
//  MCTableViewInfo.swift
//  MCSXY
//
//  Created by 瞄财网 on 2017/7/10.
//  Copyright © 2017年 瞄财网. All rights reserved.
//

import Foundation


class MCTableViewInfo: NSObject {
    
    var headerClass :String?
    var footerClass :String?
    var cellClass :String?
    var section :Int?
   

}

public enum ZB_TableViewStyle {
    case group
    case plain
}

class MCBaseTableViewInfos: NSObject {
    
    var tableViewStyle :ZB_TableViewStyle = .plain
    var infos :Array<MCTableViewInfo> = []
   required override init() {
        super.init()
    
    }

}


class MCLiveTableViewInfos: MCBaseTableViewInfos {
    
      required init() {
        super.init()
        let info = MCTableViewInfo.init()
        info.cellClass = NSObject.classNameAndSpaceName(className: "MCLiveCell")
        self.infos = [info]
    }
}

class MCVideoTableViewInfos :MCBaseTableViewInfos{
    required init() {
        super.init()
        let info = MCTableViewInfo.init()
        info.cellClass = NSObject.classNameAndSpaceName(className: "MCLiveCell")
        self.infos = [info]
    }

}
