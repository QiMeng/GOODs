//
//  BaseViewController.swift
//  GOODS_Swift
//
//  Created by strongsoft on 14-6-11.
//  Copyright (c) 2014年 QiMeng_LYS. All rights reserved.
//


import UIKit

class BaseViewController: UIViewController {
    
    var titleLabel:UILabel?
    
    override func loadView() {
        super.loadView()
        self.view.backgroundColor = UIColor.whiteColor();
        
        createTitleLabel()
        
    }
    
    func createTitleLabel() {
        
        titleLabel =  UILabel(frame: CGRectMake(0, 0, 200, 44))
        titleLabel!.text = ""
        titleLabel!.textAlignment = NSTextAlignment.Center
        titleLabel!.textColor = UIColor.whiteColor()
        titleLabel!.font = UIFont.boldSystemFontOfSize(25)
        
        self.navigationItem.titleView = titleLabel
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    //创建nav 左边按钮
    func leftDefaultNavBar() {
        
        leftImageNavBar(imageStr: "",bgimage:"", text: "")
        
    }
    func leftImageNavBar (#imageStr : String , bgimage: String, text:String) {
        
        let image = UIImage(named: imageStr)
        
        let btn :UIButton = UIButton()
        
        btn.frame = CGRect(x:0 ,y:0, width:image.size.width, height:image.size.height)
        
        btn.setTitle(text , forState: UIControlState.Normal)
        
        btn.setImage(image, forState:UIControlState.Normal)
        
        btn.setBackgroundImage(UIImage(named: bgimage), forState:UIControlState.Normal)

        btn.addTarget(self, action:"leftNavBar:", forControlEvents: UIControlEvents.TouchUpInside )
        
        self.navigationItem.leftBarButtonItem = UIBarButtonItem(customView : btn)
        
    }
    
    

    
    func leftNavBar(sender: AnyObject) {
        
        
        println("leftNavBar")
        
    }
    
    
    func rightDefaultNavBar() {
        
        rightImageNavBar(imageStr: "",bgimage:"", text: "")
        
    }
    func rightImageNavBar (#imageStr : String , bgimage: String, text:String) {
        
        let image = UIImage(named: imageStr)
        
        let btn :UIButton = UIButton()
        
        btn.frame = CGRect(x:0 ,y:0, width:image.size.width, height:image.size.height)
        
        btn.setTitle(text , forState: UIControlState.Normal)
        
        btn.setImage(image, forState:UIControlState.Normal)
        
        btn.setBackgroundImage(UIImage(named: bgimage), forState:UIControlState.Normal)
        
        btn.addTarget(self, action:"rightNavBar:", forControlEvents: UIControlEvents.TouchUpInside )
        
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(customView : btn)
        
    }
    
    
    
    
    func rightNavBar(sender: AnyObject) {
        
        
        println("rightNavBar")
        
    }
    
    
    
    func ios8() -> Bool {
        println("iOS " + UIDevice.currentDevice().systemVersion)
        if ( UIDevice.currentDevice().systemVersion == "8.0" ) {
            return true
        } else {
            return false
        }
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}
