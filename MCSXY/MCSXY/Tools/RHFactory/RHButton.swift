//
//  RHButton.swift
//  MCSXY
//
//  Created by 瞄财网 on 2017/7/17.
//  Copyright © 2017年 瞄财网. All rights reserved.
//

import UIKit

class RHButton: UIButton {

    class func button(title :String, selectedTitle :String, titleColor :UIColor, selectedTitleColor :UIColor, tag :Int, font :UIFont, target: Any, action: Selector) -> Self{
        
       return self .button(frame: CGRect.zero, title: title, selectedTitle: selectedTitle, titleColor: titleColor, selectedTitleColor: selectedTitleColor, tag: tag, font: font, target: target, action: action)
    }
    
    
    class func button(frame :CGRect, title :String, selectedTitle :String, titleColor :UIColor, selectedTitleColor :UIColor, tag :Int, font :UIFont, target: Any, action: Selector) -> Self{
        let button = self.init()
        button.frame = frame;
        button.tag = tag
        button.titleLabel?.font = font
        button.setTitle(title, for:UIControlState.normal)
        button.setTitle(selectedTitle, for:UIControlState.selected)
        button.setTitleColor(titleColor, for:UIControlState.normal)
        button.setTitleColor(selectedTitleColor, for:UIControlState.selected)
        button.addTarget(target, action: action, for: UIControlEvents.touchUpInside)
        return button;

        
    }

    
}
