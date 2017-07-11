//
//  ZB_FPSLabel.swift
//  MCSXY
//
//  Created by 瞄财网 on 2017/7/11.
//  Copyright © 2017年 瞄财网. All rights reserved.
//

import UIKit

class ZB_FPSLabel: UILabel {

    static var fpsWindow :UIWindow?
    
    let defaultSize = CGSize.init(width: 75, height: 30)
    var link :CADisplayLink?
    var count = 0
    var lastTime :TimeInterval = 0
    
    override init(frame: CGRect) {
        var rect = frame
        if frame.size.width == 0 && frame.size.height == 0 {
            rect.size = defaultSize
        }
        super.init(frame: rect)
        self.layer.cornerRadius = 5.0
        self.clipsToBounds = true
        self.textAlignment = NSTextAlignment.center
        self.isUserInteractionEnabled = false
        self.backgroundColor = Color_White
        link = CADisplayLink.init(target: self, selector: #selector(fps(link:)))
        link? .add(to: RunLoop.main, forMode: RunLoopMode.commonModes)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
   
    deinit {
        link? .invalidate()
        link = nil
    }
}

extension ZB_FPSLabel{
    
    class func show() -> Void {
       let fps = ZB_FPSLabel.init()
        fps.zb_x = Screen_Width - 40 - 75
        fps.zb_y = 20
        if self.fpsWindow == nil {
            self.fpsWindow = UIWindow.init(frame: CGRect.init(x: 0, y: 0, width: Screen_Width, height: 64.0))
            self.fpsWindow?.isHidden = false
            self.fpsWindow?.windowLevel = UIWindowLevelAlert
        }
        self.fpsWindow?.addSubview(fps)
    }
   class func hide() -> Void {
        for view in (self.fpsWindow?.subviews)! {
            view .removeFromSuperview()
        }
        fpsWindow?.isHidden = true
        fpsWindow = nil
    }
}

extension ZB_FPSLabel{

    func fps(link :CADisplayLink) -> Void {
        if lastTime == 0 {
            lastTime = link.timestamp
            return
        }
        count = count + 1
        let delta = link.timestamp - lastTime
        guard delta >= 1.0 else {
            return
        }
        lastTime = link.timestamp
        let fps = Double(count) / delta
        count = 0
        let progress = fps / 60.0
        let color = UIColor.init(hue: CGFloat(0.27 * (progress - 0.2)), saturation: 1, brightness: 0.9, alpha: 1)
        
       let text = NSMutableAttributedString.init(string: "\((Int64)(round(fps)))" + " " + "FPS")
        
        text .setAttributes([NSForegroundColorAttributeName:color], range: NSRange.init(location: 0, length: text.length - 3))
        text.setAttributes([NSForegroundColorAttributeName:Color_White], range: NSRange.init(location: text.length - 3, length: 3))
        text.setAttributes([NSFontAttributeName:UIFont.systemFont(ofSize: 15.0)], range: NSRange.init(location: 0, length: text.length))
        
        self.attributedText = text
    }
}
