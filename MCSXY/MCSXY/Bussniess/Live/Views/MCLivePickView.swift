//
//  MCLivePickView.swift
//  MCSXY
//
//  Created by 瞄财网 on 2017/7/17.
//  Copyright © 2017年 瞄财网. All rights reserved.
//

import UIKit
import SnapKit

typealias livePickDidSelectBlock = (_ button :RHButton) ->Void

class MCLivePickView: MCView {

    var didSelectedBlock :livePickDidSelectBlock?
    
  required convenience init(didSelectedBlock :@escaping livePickDidSelectBlock) {
    
    self.init()
    self.didSelectedBlock = didSelectedBlock
    self.addSubViews()
    self.makeConstraintsForUI()
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    let subtittleArray :Array<String> = ["往期回顾","即将开播"]
    var btnArray :Array<RHButton> = []
    var lineArray :Array<UIView> = []
    
  
}

extension MCLivePickView{
    override func addSubViews() {
        var i = 0
        for title in self.subtittleArray {
            let btn = RHButton .button(title: title, selectedTitle: title, titleColor: Color_H1, selectedTitleColor: Color_Nav, tag: 1000 + i, font: H15, target: self, action: #selector(didSelect(btn:)))
            self .addSubview(btn)
            self.btnArray.append(btn)
            if i < self.subtittleArray.count - 1 {
                let line = UIView.init()
                line.backgroundColor = Color_Line
                self.addSubview(line)
                self.lineArray .append(line)
            } else {
                self .didSelect(btn: btn)
            }
            i += 1
        }
    }
    
    override func makeConstraintsForUI() {
        let maxSize = CGSize.init(width: 150, height: 150)
        var temp :UIView?
        var size :CGSize?
        for view in self.subviews {
            view.snp.makeConstraints({ (make) in
                if view .isKind(of: RHButton.classForCoder()){
                    let str = (view as! RHButton).currentTitle! as NSString
                 size = str .boundingRect(with: maxSize, options: NSStringDrawingOptions.usesLineFragmentOrigin, attributes: [NSFontAttributeName:H15], context: nil).size
                make.width.equalTo((size?.width)! + 5.0)
                make.top.equalTo(0)
                make.bottom.equalTo(0)
                } else {
                    make.width.equalTo(0.5)
                    make.height.equalTo(H15.pointSize)
                    make.centerY.equalToSuperview()
                }
                if let temp = temp {
                    make.right.equalTo(temp.snp.left).offset(-20)
                } else {
                    make.right.equalTo(-20)
                }
                
            })
            temp = view
        }
    }
}

extension MCLivePickView{
    func didSelect(btn :RHButton) -> Void{
        if (btn.isSelected) {
            return;
        }
        for sub in self.btnArray {
            if (sub == btn) {
                sub.isSelected = true;
            } else {
                sub.isSelected = false;
            }
        }
        
        if let block = self.didSelectedBlock {
                block(btn)
        }
    }
}
