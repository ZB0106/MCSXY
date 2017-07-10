//
//  UIView + ZB_Categery.swift
//  SWiftCoreDemo
//
//  Created by 瞄财网 on 2017/7/10.
//  Copyright © 2017年 瞄财网. All rights reserved.
//

import Foundation
import UIKit

//radiocorener
extension UIView{
    
    func ZB_Corner(corner: CGFloat) -> UIImage {
        UIGraphicsBeginImageContextWithOptions(self.bounds.size, false, 0.0);
        let context = UIGraphicsGetCurrentContext()
        
        //画board（边框)
        //boardcolor和boarwidth
        context?.setStrokeColor(UIColor.red.cgColor)
        context?.setLineWidth(3.0)
        
        
        //bezierPath
        let bePath = UIBezierPath.init(roundedRect: self.bounds, byRoundingCorners:UIRectCorner.allCorners, cornerRadii: CGSize.init(width: corner, height: corner))
        context?.addPath(bePath.cgPath)
        
        //cgpath
        let path = CGMutablePath.init()
        path .move(to: CGPoint.init(x: 0, y: 0))
        path.addArc(tangent1End: CGPoint.init(x: self.bounds.size.width, y: 0), tangent2End: CGPoint.init(x: self.bounds.size.width, y: self.bounds.size.height), radius: corner)
        path.addArc(tangent1End: CGPoint.init(x: self.bounds.size.width, y: self.bounds.size.height), tangent2End: CGPoint.init(x: 0, y: self.bounds.size.height), radius: corner)
        path.addArc(tangent1End: CGPoint.init(x: 0, y: self.bounds.size.height), tangent2End: CGPoint.init(x: 0, y: 0), radius: corner)
        path.addArc(tangent1End: CGPoint.init(x: 0, y: 0), tangent2End: CGPoint.init(x: self.bounds.size.width, y: 0), radius: corner)
        context?.addPath(path)
        
        context?.clip()
        context?.drawPath(using: CGPathDrawingMode.eoFillStroke)
        
        
        self .draw(self.frame)
        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        return image!
    }
    
}
