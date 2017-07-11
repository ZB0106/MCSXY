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
    var nameLabel :UIImageView?
    var timeLabel :UIImageView?
    var ceshiView :UIImageView?
    var touxiangView :UIImageView?
    
    
    
}

extension MCLiveCell{
    override func addSubViews() {
        self.iconView = UIImageView.init()
        self.contentView .addSubview(self.iconView!)
        self.iconView?.backgroundColor = UIColor.lightGray
        
        
        self.ceshiView = UIImageView.init()
        self.contentView .addSubview(self.ceshiView!)
        self.ceshiView?.backgroundColor = UIColor.lightGray
       
        self.touxiangView = UIImageView.init()
        self.contentView .addSubview(self.touxiangView!)
        self.touxiangView?.backgroundColor = UIColor.lightGray
        
        self.nameLabel = UIImageView.init()
        self.contentView .addSubview(self.nameLabel!)
        self.nameLabel?.backgroundColor = UIColor.lightGray
        
        self.timeLabel = UIImageView.init()
        self.contentView .addSubview(self.timeLabel!)
        self.timeLabel?.backgroundColor = UIColor.lightGray

        
       
        
        self.iconView?.layer.cornerRadius = 15.0
        self.iconView?.layer.masksToBounds = true
        self.touxiangView?.layer.cornerRadius = 15.0
        self.touxiangView?.layer.masksToBounds = true
        self.ceshiView?.layer.cornerRadius = 15.0
        self.ceshiView?.layer.masksToBounds = true
        self.timeLabel?.layer.cornerRadius = 15.0
        self.timeLabel?.layer.masksToBounds = true
        self.nameLabel?.layer.cornerRadius = 15.0
        self.nameLabel?.layer.masksToBounds = true

//        self.nameLabel = UILabel.init()
//        self.nameLabel?.text = "ceshi"
//        self.nameLabel?.backgroundColor = UIColor.lightGray
//        self.contentView .addSubview(self.nameLabel!)
//        self.nameLabel?.layer.cornerRadius = 15.0
//        self.nameLabel?.layer.masksToBounds = true
//        
//        
//        self.timeLabel = UILabel.init()
//        self.timeLabel?.text = "20170107"
//        self.timeLabel?.backgroundColor = UIColor.yellow
//        self.contentView .addSubview(self.timeLabel!)
        
        
    }
    
    override func makeConstraintsForUI() {
        self.iconView?.frame = CGRect.init(x: 0, y: 0, width: 44, height: 44)
        self.ceshiView?.frame = CGRect.init(x: 64, y: 0, width: 44, height: 44)
        self.touxiangView?.frame = CGRect.init(x: 128, y: 0, width: 44, height: 44)
        self.nameLabel?.frame = CGRect.init(x: 190, y: 0, width: 50, height: 44)
        self.timeLabel?.frame = CGRect.init(x: 260, y: 0, width: 80, height: 44)
        
        
        
    }
}

extension MCLiveCell{
    override func ZB_ConfigurationWithData(ZB_Data: Any?) {
        self.touxiangView?.image = UIImage.init(named: "18e58PICMwt_1024.jpg");
        self.ceshiView?.image = UIImage.init(named: "57b2d98e109c6_1024.jpg")
        self.iconView?.image = UIImage.init(named: "140-150F1142A0.jpg")
        self.nameLabel?.image = UIImage.init(named: "160P3142450-4.jpg")
        self.timeLabel?.image = UIImage.init(named: "timg-2.jpeg")
        
        
        
//        self.touxiangView?.image = (UIImage.init(named: "18e58PICMwt_1024.jpg"))?.ZB_Corner(corner: 15.0 ,drawRect: (self.touxiangView?.bounds)!)
//        self.ceshiView?.image = (UIImage.init(named: "57b2d98e109c6_1024.jpg"))?.ZB_Corner(corner: 15.0 ,drawRect: (self.ceshiView?.bounds)!)
//        self.iconView?.image = (UIImage.init(named: "140-150F1142A0.jpg"))?.ZB_Corner(corner: 15.0 ,drawRect: (self.iconView?.bounds)!)
//        self.nameLabel?.image = (UIImage.init(named: "160P3142450-4.jpg"))?.ZB_Corner(corner: 15.0 ,drawRect: (self.nameLabel?.bounds)!)
//        self.timeLabel?.image = (UIImage.init(named: "timg-2.jpeg"))?.ZB_Corner(corner: 15.0 ,drawRect: (self.timeLabel?.bounds)!)

    }
}
