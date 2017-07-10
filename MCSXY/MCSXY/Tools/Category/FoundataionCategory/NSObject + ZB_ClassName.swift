//
//  NSString + ZB_ClassName.swift
//  MCSXY
//
//  Created by LoveXLD on 2017/7/10.
//  Copyright © 2017年 瞄财网. All rights reserved.
//

import Foundation


extension NSObject{
   class func classNameAndSpaceName(className: String?) -> String {
        if let clsName = Bundle.main.infoDictionary!["CFBundleExecutable"] {
            return clsName as! String + "." + className!
        } else {
            return ""
        }
    }
    
}
