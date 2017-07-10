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
        self.contentView .addSubview(self.iconView!)
        
        self.ceshiView = UIImageView.init(image: UIImage.init(named: ""))
        self.contentView .addSubview(self.ceshiView!)
        
        self.touxiangView = UIImageView.init(image: UIImage.init(named: ""))
        self.contentView .addSubview(self.touxiangView!)
        
        self.nameLabel = UILabel.init()
        self.nameLabel?.text = "ceshi"
        self.nameLabel?.backgroundColor = UIColor.lightGray
        self.contentView .addSubview(self.nameLabel!)
        
        
        self.timeLabel = UILabel.init()
        self.timeLabel?.text = "20170107"
        self.timeLabel?.backgroundColor = UIColor.yellow
        self.contentView .addSubview(self.timeLabel!)
    }
    
    override func makeConstraintsForUI() {
        self.iconView?.frame = CGRect.init(x: 0, y: 0, width: 44, height: 44)
        self.ceshiView?.frame = CGRect.init(x: 50, y: 0, width: 44, height: 44)
        self.touxiangView?.frame = CGRect.init(x: 100, y: 0, width: 44, height: 44)
        self.nameLabel?.frame = CGRect.init(x: 150, y: 0, width: 50, height: 44)
        self.timeLabel?.frame = CGRect.init(x: 200, y: 0, width: 80, height: 44)
    }
}
