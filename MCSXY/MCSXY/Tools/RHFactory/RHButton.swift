//
//  RHButton.swift
//  MCSXY
//
//  Created by 瞄财网 on 2017/7/17.
//  Copyright © 2017年 瞄财网. All rights reserved.
//

import UIKit

class RHButton: UIButton {

    class func button(frame :CGRect? = CGRect.zero, title :String? = nil, selectedTitle :String? = nil, titleColor :UIColor? = nil, selectedTitleColor :UIColor? = nil, tag :Int? = nil, font :UIFont? = nil, target: Any? = nil, action: Selector? = nil) -> RHButton{
        let button = RHButton.init()
        if let frame = frame {
            button.frame = frame
        }
        if let font = font {
            button.titleLabel?.font = font
        }
        if let titleColor = titleColor {
             button.setTitleColor(titleColor, for:UIControlState.normal)
        }
        if let selectedTitleColor = selectedTitleColor {
            button.setTitleColor(selectedTitleColor, for:UIControlState.selected)
        }
        if let tag = tag {
            button.tag = tag
        }
        
        if let title = title {
            button.setTitle(title, for:UIControlState.normal)
        }

        if let selectedTitle = selectedTitle {
             button.setTitle(selectedTitle, for:UIControlState.selected)
        }

        if let target = target, let action = action {
            button.addTarget(target, action: action, for: UIControlEvents.touchUpInside)
        }
        return button;
    }

    
}
