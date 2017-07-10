//
//  RHUserDefaults.swift
//  MCSXY
//
//  Created by 瞄财网 on 2017/6/21.
//  Copyright © 2017年 瞄财网. All rights reserved.
//

import Foundation


let LocalVersion = "localAPPVersion"

class RHUserDefaults: NSObject {
    
    public class func objectForKey(key : String) -> Any {
        
        return UserDefaults.standard .object(forKey:key) as Any
}
    /**
     存储value
     
     
     @param value value
     @param key   key
     */
    public class func setObject(value : Any, key : String) -> Void {
        UserDefaults.standard.set(value, forKey: key)
    }
    
    /**
     获取当前app版本号
     
     @return 当前app版本号
     */
    public class func currentAppVersion() -> String? {
        return Bundle.main.infoDictionary!["CFBundleShortVersionString"] as? String
    }

    
}
extension RHUserDefaults{
  
}
