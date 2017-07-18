//
//  MCLiveCell.swift
//  MCSXY
//
//  Created by 瞄财网 on 2017/7/10.
//  Copyright © 2017年 瞄财网. All rights reserved.
//

import UIKit
import SwiftyJSON

class MCLiveCell: MCTableViewCell {

    var image_icon :RHImageView?
    var image_priceType :RHImageView?
    var lab_title :RHLabel?
    var lab_learnCount :RHLabel?
    var lab_learnTime :RHLabel?
    var lab_teacher :RHLabel?
    
    
    
}

extension MCLiveCell{
    override func addSubViews() {
        image_priceType = RHImageView.imageView()
        image_icon = RHImageView()
        image_icon?.addSubview(image_priceType!)
        contentView.addSubview(image_icon!)
        
        lab_title = RHLabel.label(font: H15, textColor: Color_RGB(r: 77, g: 77, b: 77), numberOfLines: 2)
        contentView.addSubview(lab_title!)
        
        lab_learnCount = RHLabel.label(font: H12, textColor: Color_RGB(r: 128, g: 128, b: 128), textAlignment: .right)
        contentView.addSubview(lab_learnCount!)
        
        lab_learnTime = RHLabel.label(font: H12, textColor: Color_RGB(r: 128, g: 128, b: 128))
        contentView.addSubview(lab_learnTime!)
        
        lab_teacher = RHLabel.label(font: H12, textColor: Color_RGB(r: 128, g: 128, b: 128))
        contentView.addSubview(lab_teacher!)
        
    }
    
    override func makeConstraintsForUI() {
        image_icon?.snp.makeConstraints({ (make) in
            make.size.equalTo(CGSize.init(width: 120, height: 80))
            make.left.equalTo(15)
            make.top.equalTo(15)
        })
        
        image_priceType?.snp.makeConstraints({ (make) in
            make.size.equalTo(CGSize.init(width: 30, height: 30))
            make.left.equalTo(0)
            make.top.equalTo(0)
        })
        lab_title?.snp.makeConstraints({ (make) in
            make.top.equalTo((image_icon?.snp.top)!)
            make.left.equalTo((image_icon?.snp.right)!).offset(10)
            make.height.equalTo(40)
            make.right.equalTo(-15)
        })
        lab_learnCount?.snp.makeConstraints({ (make) in
            make.size.equalTo(CGSize.init(width: 75, height: 20))
            make.bottom.equalTo((image_icon?.snp.bottom)!)
            make.right.equalTo(-15)
        })
        lab_teacher?.snp.makeConstraints({ (make) in
            make.height.equalTo(20);
            make.bottom.equalTo((image_icon?.snp.bottom)!);
            make.left.equalTo((lab_title?.snp.left)!);
            make.right.equalTo((lab_learnCount?.snp.left)!).offset(-5);
        })
        lab_learnTime?.snp.makeConstraints({ (make) in
            make.height.equalTo(20);
            make.bottom.equalTo((lab_teacher?.snp.top)!);
            make.left.equalTo((lab_title?.snp.left)!);
            make.right.equalTo(-15);

        })
    }
}

extension MCLiveCell{
    override func ZB_ConfigurationWithData(jsonData: Any?) {
        if let data = jsonData as? JSON {
            lab_title?.text = data["name"].stringValue
            lab_teacher?.text = data["eduTeacher"]["teacherName"].stringValue
            
            image_icon?.sd_setImage(with: NSURL.init(string: ImageUrl(url: data["logo"].stringValue))! as URL, placeholderImage: UIImage.init(named: "course_placeholder"), options: .retryFailed, completed: {
                
                [weak self] (image, error, cacheType, imageUrl) in
                if error != nil {
                    self?.image_icon?.image = UIImage.init(named: "course_failured_placeholder")
                }
                
            })
            if data["isPay"].intValue == 1 {
                image_priceType?.image = UIImage.init(named: "course_free_sign")
            } else {
                image_priceType?.image = UIImage.init(named: "course_vip_sign")
            }
           
//            let text = data["liveBeginTime"].stringValue
//            let index = text.index(text.endIndex, offsetBy: -3)
//            lab_learnTime?.text = text.substring(to: index) + "开播"
            
            let number = Double(data["lookCount"].intValue) / 10000.0
            if number > 1.0 {
                lab_learnCount?.text = String(format:"%.2f",arguments:[number])
            } else {
                lab_learnCount?.text = data["lookCount"].stringValue + "人报名"
            }
        }
    
    }
}
