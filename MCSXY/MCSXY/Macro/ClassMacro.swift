//
//  File.swift
//  MCSXY
//
//  Created by 瞄财网 on 2017/6/21.
//  Copyright © 2017年 瞄财网. All rights reserved.
//

import Foundation

let DEFAULTMANAGER = FileManager .default

let RootDocumentPath = NSSearchPathForDirectoriesInDomains(FileManager.SearchPathDirectory.documentDirectory, FileManager.SearchPathDomainMask.userDomainMask, true)
let RootTemp = NSTemporaryDirectory()
let RootCache = NSSearchPathForDirectoriesInDomains(FileManager.SearchPathDirectory.cachesDirectory, FileManager.SearchPathDomainMask.userDomainMask, true)
