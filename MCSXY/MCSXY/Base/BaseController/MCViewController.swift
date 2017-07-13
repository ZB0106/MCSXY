//
//  MCViewController.swift
//  MCSXY
//
//  Created by 瞄财网 on 2017/6/19.
//  Copyright © 2017年 瞄财网. All rights reserved.
//

import UIKit

public class MCViewController: UIViewController {

    var viewModelManager :ZB_ViewManagerModel?
    override public func viewDidLoad() {
        super.viewDidLoad()
        
        #if DEBUG
            ZB_FPSLabel.show()
        #endif
        
        self .ZB_bindingViewmodels()
    }

    public override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)

    }
    override public func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}

extension MCViewController : ZB_BindingProtocol{
    
    public func ZB_bindingViewmodels() {
        
        let cls = MC_ViewControllerMapManagerDict[NSStringFromClass(type(of: self))]
        if cls != nil {
            if let relCls = NSClassFromString(cls!) as? ZB_ViewManagerModel.Type {
                self.viewModelManager = relCls.init()
                self.viewModelManager? .ZB_bindingViewMangerModel(viewController: self, viewModelHandeler: nil)
            }
        }
        
    }
}
