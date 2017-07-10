//
//  MCGuideController.swift
//  MCSXY
//
//  Created by 瞄财网 on 2017/6/19.
//  Copyright © 2017年 瞄财网. All rights reserved.
//

import UIKit

class MCGuideController: UIViewController {

    var imageArray : Array<Any>?
    var enterl : (()->Void)?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.automaticallyAdjustsScrollViewInsets = false
        addSubviews()
        addSubviewsForScrollView()
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    lazy var scrollView: UIScrollView = {
        let scrollView = UIScrollView.init(frame: UIScreen.main.bounds)
        scrollView.delegate = self
        scrollView.contentSize = CGSize(width:CGFloat(Screen_Width) * CGFloat(self.imageArray!.count), height:Screen_Height)
        scrollView.isPagingEnabled = true
        scrollView.contentOffset = CGPoint(x:0, y:0)
        scrollView.bounces = false
        scrollView.showsHorizontalScrollIndicator = false
        return scrollView
    }()

    
    lazy var btn_jump: UIButton = {
        let btn_jump = UIButton.init(type: UIButtonType.custom)
        btn_jump.frame = CGRect(x:Screen_Width - 63, y:20, width:48, height:26)
        btn_jump.backgroundColor = Color_RGB_Alpha(r: 0, g: 0, b: 0, f: 0.2)
        btn_jump.layer.cornerRadius = 13.0
        btn_jump.layer.masksToBounds = true
        btn_jump.titleLabel?.font = H13
        btn_jump .setTitle("跳过", for: UIControlState.normal)
        btn_jump .addTarget(self, action: #selector(enterApp), for: UIControlEvents.touchUpInside)
        return btn_jump
    }()
    
    lazy var pageControl: UIPageControl = {
        let pageControl = UIPageControl.init(frame: CGRect(x:0, y:0, width:Screen_Width, height:10))
        pageControl.center = CGPoint.init(x: self.view.center.x, y: Screen_Height - 80)
        pageControl.numberOfPages = self.imageArray!.count
        pageControl.pageIndicatorTintColor = Color_RGB_Alpha(r: 193, g: 193, b: 193, f: 0.7)
        pageControl.currentPageIndicatorTintColor = Color_RGB(r: 153, g: 153, b: 153)
        return pageControl
    }()
}

extension MCGuideController{
    func enterApp() -> Void {
        UIApplication.shared.isStatusBarHidden = false
        enterl!()
    }
    
}

extension MCGuideController{

    convenience init(images:Array<Any>, enter:@escaping ()->Void) {
        self.init()
        imageArray = images
        enterl = enter
    }
}

extension MCGuideController {
    func addSubviews() -> Void {
        self.view .addSubview(scrollView)
        self.view .addSubview(btn_jump)
        self.view .addSubview(pageControl)
    }
    
    func addSubviewsForScrollView() -> Void {
        for i in 0..<imageArray!.count {
            let imageView : UIImageView = UIImageView.init(frame: CGRect(x:CGFloat(Screen_Width) * CGFloat(i), y:0, width:Screen_Width, height:Screen_Height))
            imageView.backgroundColor = Color_Random()
            imageView.clipsToBounds = true
            imageView.image = UIImage.init(contentsOfFile: Bundle.main.path(forResource:"guidesBuddle", ofType:"bundle")! + "/\(imageArray![i])")
            
            print("\(Bundle.main.path(forResource:"guidesBuddle", ofType:"bundle")! + "/\(imageArray![i])")")
            scrollView .addSubview(imageView)
        }
        
        let enterBtn : UIButton = UIButton.init(frame: CGRect(x:CGFloat(Screen_Width) * CGFloat(imageArray!.count - 1) + (Screen_Width - 150) / 2.0 , y:Screen_Height - 60, width:150, height:40))
        enterBtn.titleLabel?.font = H15
        enterBtn .setTitle("立即进入", for: UIControlState.normal)
        enterBtn.setTitleColor(Color_Nav, for: UIControlState.normal)
        enterBtn .addTarget(self, action: #selector(enterApp), for:UIControlEvents.touchUpInside)
        scrollView .addSubview(enterBtn)
    }
}

// MARK :代理
extension MCGuideController:UIScrollViewDelegate{
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        let index : NSInteger = NSInteger((scrollView.contentOffset.x + Screen_Width / 2.0) / Screen_Width)
        pageControl.currentPage = index
    }
}
