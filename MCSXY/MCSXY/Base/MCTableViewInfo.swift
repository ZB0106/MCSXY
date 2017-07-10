//
//  MCTableViewInfo.swift
//  MCSXY
//
//  Created by 瞄财网 on 2017/7/10.
//  Copyright © 2017年 瞄财网. All rights reserved.
//

import Foundation

class MCTableViewInfo: NSObject {
    var cellIdentifier :String?
    var groupIdentifier :String?
    var groupClass :String?
    var cellClass :String?

}
class MCBaseTableViewInfos: NSObject {
    
    var infos :Array<MCTableViewInfo>?
   required override init() {
        super.init()
    
    }

}


class MCLiveTableViewInfos: MCBaseTableViewInfos {
    
      required init() {
        super.init()
        let info = MCTableViewInfo.init()
        info.cellIdentifier = "liveCell"
        info.cellClass = NSObject.classNameAndSpaceName(className: "MCLiveCell")
        self.infos = [info]
    }
}
