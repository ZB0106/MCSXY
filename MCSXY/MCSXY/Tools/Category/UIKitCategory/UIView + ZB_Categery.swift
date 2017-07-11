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
extension UIImage{
    
    func ZB_Corner(corner: CGFloat, drawRect :CGRect) -> UIImage {

        UIGraphicsBeginImageContextWithOptions(drawRect.size, false, 0.0);
        
        let context = UIGraphicsGetCurrentContext()
        //画board（边框)
        //boardcolor和boarwidth
        context?.setStrokeColor(UIColor.red.cgColor)
        context?.setLineWidth(3.0)
        
        
        //bezierPath
//        let bePath = UIBezierPath.init(roundeddrawRect: drawRect, byRoundingCorners:UIdrawRectCorner.allCorners, cornerRadii: CGSize.init(width: corner, height: corner))
//        context?.addPath(bePath.cgPath)
        
        //cgpath
        let path = CGMutablePath.init()
        path .move(to: CGPoint.init(x: 0, y: 0))
        path.addArc(tangent1End: CGPoint.init(x: drawRect.size.width, y: 0), tangent2End: CGPoint.init(x: drawRect.size.width, y: drawRect.size.height), radius: corner)
        path.addArc(tangent1End: CGPoint.init(x: drawRect.size.width, y: drawRect.size.height), tangent2End: CGPoint.init(x: 0, y: drawRect.size.height), radius: corner)
        path.addArc(tangent1End: CGPoint.init(x: 0, y: drawRect.size.height), tangent2End: CGPoint.init(x: 0, y: 0), radius: corner)
        path.addArc(tangent1End: CGPoint.init(x: 0, y: 0), tangent2End: CGPoint.init(x: drawRect.size.width, y: 0), radius: corner)
        context?.addPath(path)
        
        context?.clip()
        context?.drawPath(using: CGPathDrawingMode.eoFillStroke)
        
        self.draw(in: drawRect)
        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        return image!
    }
    
}

//frame
extension UIView{
    var zb_x :CGFloat?{
        set{
            self.frame.origin.x = newValue!
        }
        get{
            return self.frame.origin.x
        }
    }
    var zb_y :CGFloat?{
        set{
            self.frame.origin.y = newValue!
        }
        get{
            return self.frame.origin.y
        }
    }
    var zb_width :CGFloat?{
        set{
            self.frame.size.width = newValue!
        }
        get{
            return self.frame.size.width
        }
    }

    var zb_height :CGFloat?{
        set{
            self.frame.size.height = newValue!
        }
        get{
            return self.frame.size.height
        }
    }
    var zb_origin :CGPoint?{
        set{
            self.frame.origin = newValue!
        }
        get{
            return self.frame.origin
        }
    }
    var zb_size :CGSize?{
        set{
            self.frame.size = newValue!
        }
        get{
            return self.frame.size
        }
    }


}
