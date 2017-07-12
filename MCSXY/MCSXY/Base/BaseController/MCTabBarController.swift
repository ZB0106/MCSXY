//
//  MCTabBarController.swift
//  MCSXY
//
//  Created by 瞄财网 on 2017/6/19.
//  Copyright © 2017年 瞄财网. All rights reserved.
//

import UIKit

class MCTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        self .setTabBar()
        self .setTabBarViewControllers()
    
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
         self.navigationController!.isNavigationBarHidden = true
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        self.navigationController?.isNavigationBarHidden = false
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}

extension MCTabBarController {
    func setTabBar() -> Void {
        
        let item : UITabBarItem = UITabBarItem .appearance()
        var dict : Dictionary<String, Any> = [:]
        dict[NSForegroundColorAttributeName] = Color_TabBarNormal
        item.setTitleTextAttributes(dict, for: UIControlState.normal)
        
        var selectedDict : Dictionary<String, Any> = [:]
        selectedDict[NSForegroundColorAttributeName] = Color_TabBarSelected
        item.setTitleTextAttributes(dict, for: UIControlState.selected)

        
        let tabbar : UITabBar = UITabBar.appearance()
        tabbar.barTintColor = Color_TabBar;
        tabbar .isTranslucent = false
        
        
        
    }
    func setTabBarViewControllers() -> Void {
        let home : MCHomeController = MCHomeController()
        let live : MCLiveController = MCLiveController()
        let video : MCVideoController = MCVideoController()
        let mine : MCMineController = MCMineController()
        
        let array : Array = [home,live,video,mine]
        let titleArr : Array = ["首页","精品直播","视频课程","我的"]
        let imageArr : Array = ["tabBar_home_normal","tabBar_live_normal","tabBar_video_normal","tabBar_mine_normal"]
        let selectedImageArr : Array = ["tabBar_home_selected","tabBar_live_selected","tabBar_video_selected","tabBar_mine_selected"]
        
        for i in 0 ..< array.count {
            setNavWithVC(vc: array[i], title: titleArr[i], image: imageArr[i], selectedImage: selectedImageArr[i])
        }
        
    }
        
        
        
        
    func setNavWithVC(vc:UIViewController, title:String, image:String, selectedImage:String) -> Void {
        let nav : MCNavigationController = MCNavigationController(rootViewController:vc)
            nav.navigationBar .isTranslucent = false;
            vc.title = title;
            nav.tabBarItem.image = UIImage(named: image)?.withRenderingMode(UIImageRenderingMode.alwaysOriginal)
            nav.tabBarItem.selectedImage = UIImage (named: selectedImage)?.withRenderingMode(UIImageRenderingMode.alwaysOriginal)
            self .addChildViewController(nav)
        }
    
    
}
