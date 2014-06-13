//
//  BaseNavigationController.swift
//  GOODS_Swift
//
//  Created by strongsoft on 14-6-11.
//  Copyright (c) 2014年 QiMeng_LYS. All rights reserved.
//

import UIKit

class BaseNavigationController: UINavigationController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let bgImage = UIImage(named:"nav_bg_ios7")
        self.navigationBar.setBackgroundImage(bgImage, forBarPosition:UIBarPosition.Any , barMetrics:UIBarMetrics.Default)

        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}
