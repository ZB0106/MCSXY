//
//  RHLabel.swift
//  MCSXY
//
//  Created by 瞄财网 on 2017/7/18.
//  Copyright © 2017年 瞄财网. All rights reserved.
//

import UIKit

class RHLabel: UILabel {

   class func label(frame :CGRect? = CGRect.zero, text :String? = nil, font :UIFont? = nil, textColor :UIColor? = nil, textAlignment :NSTextAlignment? = nil, numberOfLines :Int? = nil) -> RHLabel {
    
   let label = RHLabel();
    if let frame = frame {
        label.frame = frame
    }
    if let font = font {
        label.font = font
    }
    if let textColor = textColor {
        label.textColor = textColor
    }
    if let textAlignment = textAlignment {
        label.textAlignment = textAlignment
    }
    if let numberOfLines = numberOfLines {
        label.numberOfLines = numberOfLines
    }
    if let text = text {
        label.text = text
    }
    return label;

    }
    
}
