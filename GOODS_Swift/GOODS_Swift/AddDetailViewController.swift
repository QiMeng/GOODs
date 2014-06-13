//
//  AddDetailViewController.swift
//  GOODS_Swift
//
//  Created by strongsoft on 14-6-12.
//  Copyright (c) 2014年 QiMeng_LYS. All rights reserved.
//

import UIKit

class AddDetailViewController: BaseViewController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        titleLabel!.text = "Detail"
        
        leftImageNavBar(imageStr: "icon_left", bgimage: "", text: "")

        
    }
    
    
    override func leftNavBar(sender: AnyObject) {
        
        self.navigationController.popViewControllerAnimated(true)
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}
