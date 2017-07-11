//
//  MCTableViewCell.swift
//  MCSXY
//
//  Created by 瞄财网 on 2017/6/19.
//  Copyright © 2017年 瞄财网. All rights reserved.
//

import UIKit

public class MCTableViewCell: UITableViewCell {

    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self .addSubViews()
        self .makeConstraintsForUI()
    }
    
    required public init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}

extension MCTableViewCell : MCUIProtocol, ZB_ConfigurationDataProtocol{
    public func addSubViews() {
        
    }
    public func makeConstraintsForUI() {
        
    }
    public func ZB_ConfigurationWithData(ZB_Data: Any?) {
        
    }
}
