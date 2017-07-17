//
//  MCLiveController.swift
//  MCSXY
//
//  Created by 瞄财网 on 2017/6/19.
//  Copyright © 2017年 瞄财网. All rights reserved.
//

import UIKit

 class MCLiveController: MCViewController {
    
    var pickView :MCLivePickView?
    var contentView :UIView?
    var line :UIView?
    var will :MCWillLiveViewController?
    var pre :MCPreLiveViewController?
    var current :MCTableViewController?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        contentView = UIView.init()
        contentView?.backgroundColor = Color_Red
        self.view.addSubview(contentView!)
        
        line = UIView.init()
        line?.backgroundColor = Color_Line
        self.view.addSubview(line!)
        
        
        pre = MCPreLiveViewController()
        will = MCWillLiveViewController()
        
        self .addChildViewController(pre!)
        self .addChildViewController(will!)
        
        contentView?.addSubview(will!.view)
        current = will
        
        //有默认选项放在最下面，否则会造成默认选择不加载数据，此时的will和pre还未创建
        pickView = MCLivePickView.init(didSelectedBlock: { [weak self]  (btn) in
            self?.transitionAnimation(btn: btn)
        })
        self.view.addSubview(pickView!)

        self .makeConstraintsForUI()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}


extension MCLiveController{
    func makeConstraintsForUI() -> Void {
        pickView?.snp.makeConstraints({ (make) in
            make.right.equalTo(0)
            make.left.equalTo(0)
            make.top.equalTo(0)
            make.height.equalTo(44)
        })
        line?.snp.makeConstraints({ (make) in
            make.right.equalTo(0)
            make.left.equalTo(0)
            make.top.equalTo((pickView?.snp.bottom)!).offset(0)
            make.height.equalTo(0.5)
        })
        contentView?.snp .makeConstraints({ (make) in
            make.right.equalTo(0)
            make.left.equalTo(0)
            make.top.equalTo((line?.snp.bottom)!).offset(0)
            make.bottom.equalTo(0)

        })
        will?.view.snp.makeConstraints({ (make) in
            make.right.equalTo(0)
            make.left.equalTo(0)
            make.top.equalTo(0)
            make.height.equalTo(0)
        })
    }
}

// MARK: -transitionAniamtion
extension MCLiveController{

    func transitionAnimation(btn :RHButton) -> Void {
        var toVc :MCTableViewController?
        var subType :String?
        if btn.tag == 1000 {
            toVc = self.pre
            subType = "fromLeft"
        } else {
            toVc = self.will
            subType = "fromRight"
        }
        if self.current == toVc {
            return
        }
        let old = self.current
        toVc?.view.frame = (self.contentView?.bounds)!
        
        print(toVc?.view.frame as Any,self.current)
        self.transition(from: self.current!, to: toVc!, duration: 0, options: UIViewAnimationOptions.curveEaseInOut, animations: {
            () in
            let tra = CATransition.init()
            tra.type = "reveal"
            tra.subtype = subType
            tra.duration = 0.3
            self.contentView?.layer .add(tra, forKey: "KCTransitionAnimation")
        }) { (finished) in
            if finished {
                self.current = toVc
            } else {
                self.current = old
            }
        }
    }
}

// MARK: -override superFunc
extension MCLiveController{

    
    
    override func ZB_bindingViewmodels() {
        
    }
    
}
