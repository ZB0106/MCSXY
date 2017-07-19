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
   weak var current :MCTableViewController?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        contentView = UIView.init()
        contentView?.backgroundColor = Color_White
        self.view.addSubview(contentView!)
        
        line = UIView.init()
        line?.backgroundColor = Color_Line
        self.view.addSubview(line!)
        
//        let auresizing =  UIViewAutoresizing(rawValue: UIViewAutoresizing.flexibleBottomMargin.rawValue | UIViewAutoresizing.flexibleTopMargin.rawValue | UIViewAutoresizing.flexibleLeftMargin.rawValue | UIViewAutoresizing.flexibleRightMargin.rawValue)
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
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
       
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
        line?.snp.makeConstraints({[weak self] (make) in
            make.right.equalTo(0)
            make.left.equalTo(0)
            make.top.equalTo((self?.pickView?.snp.bottom)!).offset(0)
            make.height.equalTo(0.5)
        })
        contentView?.snp .makeConstraints({[weak self] (make) in
            make.right.equalTo(0)
            make.left.equalTo(0)
            make.top.equalTo((self?.line?.snp.bottom)!).offset(0)
            make.bottom.equalTo(0)

        })
        will?.view.snp.makeConstraints({ (make) in
            make.right.equalTo(0)
            make.left.equalTo(0)
            make.top.equalTo(0)
            make.bottom.equalTo(0)
        })
    }
}

// MARK: -transitionAniamtion
extension MCLiveController{

    func transitionAnimation(btn :RHButton) -> Void {
        var toVc :MCTableViewController?
        var subType :String?
        if btn.tag == 1000 {
            toVc = pre
            subType = "fromLeft"
        } else {
            toVc = will
            subType = "fromRight"
        }
        if self.current == toVc {
            return
        }
        let old = current

        print(toVc?.view.frame as Any,self.current as Any)
        self.transition(from: current!, to: toVc!, duration: 0.3, options: UIViewAnimationOptions.curveEaseInOut, animations: {
            () in
            let tra = CATransition.init()
            tra.type = "reveal"
            tra.subtype = subType
            tra.duration = 0.3
            self.contentView?.layer .add(tra, forKey: "KCTransitionAnimation")
        }) { [weak self](finished) in
            if finished {
                self?.current = toVc
                //每次执行完重新布局
                toVc?.view.snp.remakeConstraints({ (make) in
                    make.right.equalTo(0)
                    make.left.equalTo(0)
                    make.top.equalTo(0)
                    make.bottom.equalTo(0)
                })
                
            } else {
                self?.current = old
            }
        }
    }
}

// MARK: -override superFunc
extension MCLiveController{

    
    
    override func ZB_bindingViewmodels() {
        
    }
    
}
