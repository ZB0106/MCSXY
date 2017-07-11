//
//  MCHomeController.swift
//  MCSXY
//
//  Created by 瞄财网 on 2017/6/19.
//  Copyright © 2017年 瞄财网. All rights reserved.
//

import UIKit

class MCHomeController: MCViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let label = UILabel.init()
        label.text = "ceshishsishfsioafjaofjaojfoajfajf"
        label.frame = CGRect.init(x: 40, y: 200, width: 150, height: 150)
        
        label.backgroundColor = UIColor.clear
        
        
        
        self.view .addSubview(label)
        
       
        
        let ceshi = UIView.init()
        ceshi.backgroundColor = UIColor.red
        ceshi.frame = CGRect.init(x: 40, y: 40, width: 150, height: 150)
        self.view .addSubview(ceshi)
        
        
        let iconView = UIImageView.init()
        iconView.backgroundColor = UIColor.blue
        iconView.frame = CGRect.init(x: 40, y: 360, width: 150, height: 150)
        self.view .addSubview(iconView)

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
