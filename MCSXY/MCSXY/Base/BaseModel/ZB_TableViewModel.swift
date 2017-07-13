//
//  ZB_TableViewModel.swift
//  MCSXY
//
//  Created by 瞄财网 on 2017/7/13.
//  Copyright © 2017年 瞄财网. All rights reserved.
//

import UIKit

class ZB_TableViewModel: ZB_ViewModel {
    
    override func ZB_ConfigurationWithData(ZB_Data: Any?) {
        let view = self.dataView as! ZB_BaseTableView
        view.dataArray = ZB_Data as? Array
    }
}
