//
//  UtilsMacro.swift
//  MCSXY
//
//  Created by 瞄财网 on 2017/6/16.
//  Copyright © 2017年 瞄财网. All rights reserved.
//

import UIKit


//弹框显示时间
let ALertTimeInterval = 2.0

/****** 宏 ******/
let Screen_Width    =   UIScreen.main.bounds.size.width
let Screen_Height    =  UIScreen.main.bounds.size.height


let Home_Btn_Width   =  (Screen_Width - 160) / 5
let Home_Btn_Height  =  Home_Btn_Width + 30
//宽 高
//字体
let H22             =   UIFont.systemFont(ofSize: 22)
let H20             =   UIFont.systemFont(ofSize: 20)
let H18            =    UIFont.systemFont(ofSize: 18)
let H16            =    UIFont.systemFont(ofSize: 16)
let H15            =    UIFont.systemFont(ofSize: 15)
let H14           =     UIFont.systemFont(ofSize: 14)
let H13           =     UIFont.systemFont(ofSize: 13)
let H12           =     UIFont.systemFont(ofSize: 12)
let H11           =     UIFont.systemFont(ofSize: 11)
let H10          =      UIFont.systemFont(ofSize: 10)

let HB20         =      UIFont.boldSystemFont(ofSize: 20)
let HB18         =      UIFont.boldSystemFont(ofSize:18)
let HB16         =      UIFont.boldSystemFont(ofSize:16)
let HB15         =      UIFont.boldSystemFont(ofSize:15)

//颜色
func Color_RGB(r:CGFloat,g:CGFloat,b:CGFloat) -> UIColor{
    return UIColor.init(red: r / 255.0, green: g / 255.0, blue: b / 255.0, alpha:1.0);
}
func Color_RGB_Alpha(r:CGFloat,g:CGFloat,b:CGFloat,f:CGFloat) -> UIColor{
    return UIColor.init(red: r / 255.0, green: g / 255.0, blue: b / 255.0, alpha: f)
}

func Color_Random() -> UIColor{
    return UIColor(red: CGFloat(arc4random()%256) / 255.0 , green: CGFloat(arc4random()%256) / 255.0 , blue: CGFloat(arc4random()%256) / 255.0 , alpha: 1.0)
}


let Color_BG         =      Color_RGB(r: 245, g: 245, b: 245)
let Color_Cell_BG     =     Color_RGB(r: 80, g: 80, b: 80)
let Color_Nav         =     Color_RGB(r: 255, g: 130, b: 86)
let Color_TabBar       =    Color_RGB(r: 255, g: 255, b: 255)
let Color_TabBarNormal   =  Color_RGB(r: 153, g: 153, b: 153)
let Color_TabBarSelected  = Color_RGB(r: 255, g: 130, b: 86)
let Color_StatusBG       =  Color_RGB(r: 207, g: 52, b: 3)

let Color_H1          =     Color_RGB(r: 77, g: 77, b: 77)

let Color_H2           =    Color_RGB(r: 153, g: 153, b: 153)
let Color_H3          =     Color_RGB(r: 186, g: 149, b: 99)
let Color_Line         =    Color_RGB(r: 245, g: 245, b: 245)
let Color_Holder       =    Color_RGB(r: 210, g: 210, b: 214)
let Color_Free         =    Color_RGB(r: 239, g: 85, b: 34)
let Color_VIP          =    Color_RGB(r: 155, g: 206, b: 120)


let Color_White =        UIColor.white
let Color_Gray     =    UIColor.gray
let Color_LightGray   = UIColor.lightGray
let Color_Black     =   UIColor.black
let Color_Red       =   UIColor.red
let Color_Clear     =  UIColor.clear
let Color_Green     =   UIColor.green
let Color_Blue       =  UIColor.blue
let Color_Orange     =  UIColor.orange
let Color_Yellow     =  UIColor.orange

// MARK: -Cell相关
let cellHeight = "cellHeight"
let headerHeight = "headerHeight"
let footerHeight = "footerHeight"
let cellDataArray = "cellDataArray"
