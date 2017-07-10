//
//  MCNavigationController.swift
//  MCSXY
//
//  Created by 瞄财网 on 2017/6/19.
//  Copyright © 2017年 瞄财网. All rights reserved.
//

import UIKit

class MCNavigationController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()
        interactivePopGestureRecognizer?.delegate = nil
        setNavigationBar()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func pushViewController(_ viewController: UIViewController, animated: Bool) {
        if self.childViewControllers.count > 0 {
            
            viewController.hidesBottomBarWhenPushed = true
            
            let button : UIButton = UIButton.init(type: UIButtonType.custom)
            
            button .setBackgroundImage(UIImage.init(named: "back"), for: UIControlState.normal)
            button.addTarget(self, action: #selector(back), for: UIControlEvents.touchUpInside)
            button .sizeToFit()
            viewController.navigationItem.leftBarButtonItem = UIBarButtonItem.init(customView: button)
        }
        super.pushViewController(viewController, animated: animated)
    }

    
    func back() {
        self .popViewController(animated: true)
    }
    
    func setNavigationBar() {
     let navBar : UINavigationBar = UINavigationBar.appearance()
        //[navBar setBackgroundImage:[UIImage imageNamed:@"guide_1"] forBarMetrics:UIBarMetricsDefault];
        
        //设置导航栏背景颜色
        navBar .barTintColor = Color_Nav
        
        //设置导航栏中间的标题
        var attributes : Dictionary = [String:Any]();
        //字体大小，
        //    attributes[NSFontAttributeName] = [UIFont systemFontOfSize:20];
        //字体颜色
        attributes[NSForegroundColorAttributeName] = Color_White
        navBar.titleTextAttributes = attributes
        
        //设置导航栏不透明
        //    [navBar setTranslucent:NO];
        
        //更改导航栏颜色
        //    [navBar setBarStyle:UIBarStyleBlack];
        
        //设置导航栏左右item颜色
        navBar.tintColor = Color_White

    }
    
    func addStatusView() {
        let statusView = UIView.init(frame: CGRect(x:0, y:-20, width:Screen_Width, height:20))
        statusView.backgroundColor = Color_Nav
        self.navigationBar .addSubview(statusView)
    }
}
