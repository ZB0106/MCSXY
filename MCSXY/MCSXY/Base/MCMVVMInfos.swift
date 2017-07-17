//
//  MCMVVMInfos.swift
//  MCSXY
//
//  Created by 瞄财网 on 2017/7/13.
//  Copyright © 2017年 瞄财网. All rights reserved.
//

import Foundation

let MC_ViewControllerMapManagerDict =
                                    [NSObject.classNameAndSpaceName(className: "MCPreLiveViewController"):NSObject.classNameAndSpaceName(className: "MCLiveWillViewManager"),
                                       NSObject.classNameAndSpaceName(className: "MCWillLiveViewController"):NSObject.classNameAndSpaceName(className: "MCLivePreViewManager")]

let tableViewInfoDict =
                                    [NSObject.classNameAndSpaceName(className: "MCLiveWillViewManager"):NSObject.classNameAndSpaceName(className: "MCLiveWillTableViewInfos"),
                                    NSObject.classNameAndSpaceName(className: "MCLivePreViewManager"):NSObject.classNameAndSpaceName(className: "MCLivPreTableViewInfos")]

let MC_ViewManagerInfos =
                                    [NSObject.classNameAndSpaceName(className: "MCLiveWillViewManager"):NSObject.classNameAndSpaceName(className: "MCLiveWillDataViewModel"),
                                     NSObject.classNameAndSpaceName(className: "MCLivePreViewManager"):NSObject.classNameAndSpaceName(className: "MCLivePreDataViewModel")]

let MC_DataViewModelInfos =
                                    [NSObject.classNameAndSpaceName(className: "MCLiveWillDataViewModel"):NSObject.classNameAndSpaceName(className: "MCLiveWillViewModel"),
                                     NSObject.classNameAndSpaceName(className: "MCLivePreDataViewModel"):NSObject.classNameAndSpaceName(className: "MCLivePreViewModel")]

