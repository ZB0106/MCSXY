//
//  MCToolFunc.swift
//  MCSXY
//
//  Created by 瞄财网 on 2017/6/23.
//  Copyright © 2017年 瞄财网. All rights reserved.
//

import Foundation
func MCLog<T>(message : T, file : String = #file, function : String = #function, line : Int = #line)
{
    // 获取打印所在的文件
    #if DEBUG
        let fileName = (file as NSString).lastPathComponent
        
        print("(\(fileName)):(\(function)):(\(line))-\(message)")
    #endif
}
