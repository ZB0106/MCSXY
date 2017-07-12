//
//  MCViewController.swift
//  MCSXY
//
//  Created by 瞄财网 on 2017/6/19.
//  Copyright © 2017年 瞄财网. All rights reserved.
//

import UIKit

public class MCViewController: UIViewController {

    
    override public func viewDidLoad() {
        super.viewDidLoad()

        self .ZB_bindingViewmodels()
    }

    public override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        #if DEBUG
        ZB_FPSLabel.show()
        #endif
        
    }
    override public func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}

extension MCViewController : ZB_BindingProtocol{
    
    public func ZB_bindingViewmodels() {
      
    }
}
