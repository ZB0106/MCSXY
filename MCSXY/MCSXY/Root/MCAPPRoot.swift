//
//  MCAPPRoot.swift
//  MCSXY
//
//  Created by 瞄财网 on 2017/6/16.
//  Copyright © 2017年 瞄财网. All rights reserved.
//

import UIKit
import Foundation

class MCAPPRoot: NSObject {
    
    public class func setRootViewController(window:UIWindow) -> Void{
    UIApplication.shared.setStatusBarStyle(UIStatusBarStyle.lightContent, animated: true)
        
        
        
        let locaVersion  :String? = RHUserDefaults.objectForKey(key: LocalVersion) as? String
        let appVersion :String = RHUserDefaults .currentAppVersion()!
        UITableView .appearance()
        let isInstall:Bool = appVersion == locaVersion
        
        sleep(UInt32(1.5))
        
        
        let tab : MCTabBarController = MCTabBarController()
        let nav : MCNavigationController = MCNavigationController.init(rootViewController:tab)

        if !isInstall {
            window.rootViewController = MCGuideController.init(images: ["guidePage1", "guidePage2", "guidePage3"], enter: { 
               RHUserDefaults .setObject(value: appVersion, key: LocalVersion)
                window.rootViewController = nav
            })
            UIApplication.shared.isStatusBarHidden = true
        } else {
            window.rootViewController = nav
        }
        window.makeKeyAndVisible()
    }
}
