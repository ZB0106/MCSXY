//
//  MCViewController.swift
//  MCSXY
//
//  Created by 瞄财网 on 2017/6/19.
//  Copyright © 2017年 瞄财网. All rights reserved.
//

import UIKit

public class MCViewController: UIViewController,ZB_BindingViewModelProtocol {

    
    override public func viewDidLoad() {
        super.viewDidLoad()

        self .addSubViews()
        self .makeConstraintsForUI()
        
        self .bindingViewmodels()
    }

    override public func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}

extension MCViewController : MCUIProtocol{
    public func addSubViews() {
        
    }
    
    public func makeConstraintsForUI() {
        
    }
    
    public func bindingViewmodels() {
        
    }
}
