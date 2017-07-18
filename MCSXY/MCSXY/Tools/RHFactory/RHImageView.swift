//
//  RHImageView.swift
//  MCSXY
//
//  Created by 瞄财网 on 2017/7/18.
//  Copyright © 2017年 瞄财网. All rights reserved.
//

import UIKit

class RHImageView: UIImageView {

   class func imageView(frame :CGRect? = CGRect.zero, image :UIImage? = nil, tag :Int? = nil, target :Any? = nil, action: Selector? = nil) -> RHImageView {
        let imageView = RHImageView()
        imageView.contentMode = UIViewContentMode.scaleAspectFill
    
        if let tag = tag {
            imageView.tag = tag
        }
        if let frame = frame {
            imageView.frame = frame
        }
        if let image = image {
            imageView.image = image
        }
        imageView.isUserInteractionEnabled = true;
        if let target = target, let action = action {
            
            let tap = UITapGestureRecognizer.init(target: target, action: action)
            imageView.addGestureRecognizer(tap)
        }
        return imageView

    }
}
