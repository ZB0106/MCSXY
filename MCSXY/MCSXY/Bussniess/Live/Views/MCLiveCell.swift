//
//  MCLiveCell.swift
//  MCSXY
//
//  Created by 瞄财网 on 2017/7/10.
//  Copyright © 2017年 瞄财网. All rights reserved.
//

import UIKit

class MCLiveCell: MCTableViewCell {

    var iconView :UIImageView?
    var nameLabel :UILabel?
    var timeLabel :UILabel?
    var ceshiView :UIImageView?
    var touxiangView :UIImageView?
    
    
    
}

extension MCLiveCell{
    override func addSubViews() {
        self.iconView = UIImageView.init(image: UIImage.init(named: ""))
        self.ceshiView = UIImageView.init(image: UIImage.init(named: ""))
        self.touxiangView = UIImageView.init(image: UIImage.init(named: ""))
        
        self.nameLabel = UILabel.init()
        self.nameLabel?.text = "ceshi"
        
        self.timeLabel = UILabel.init()
        self.timeLabel?.text = "20170107"
    }
    
    override func makeConstraintsForUI() {
        self.iconView?.frame = CGRect.init(x: 0, y: 0, width: 44, height: 44)
        self.ceshiView?.frame = CGRect.init(x: 50, y: 0, width: 44, height: 44)
        self.touxiangView?.frame = CGRect.init(x: 100, y: 0, width: 44, height: 44)
        self.nameLabel?.frame = CGRect.init(x: 150, y: 0, width: 44, height: 44)
        self.timeLabel?.frame = CGRect.init(x: 200, y: 0, width: 44, height: 44)
    }
}
