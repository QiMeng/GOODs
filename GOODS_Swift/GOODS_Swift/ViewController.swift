//
//  ViewController.swift
//  GOODS_Swift
//
//  Created by strongsoft on 14-6-11.
//  Copyright (c) 2014年 QiMeng_LYS. All rights reserved.
//
import Foundation
import UIKit

class ViewController : BaseViewController , UITableViewDataSource, UITableViewDelegate {
    
    
    var listTableView : UITableView?
    var listArray  : NSMutableArray?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //显示标题
        titleLabel!.text = "Nav-title"
        //显示左边按钮
        leftImageNavBar(imageStr: "cloudy", bgimage: "", text: "")
        //显示右边按钮
        rightImageNavBar(imageStr: "icon_add", bgimage: "", text: "")
        
        self.listArray = NSMutableArray()
        //列表数据
        self.listArray!.addObject("a")
        
        
        //创建列表
        self.listTableView = UITableView(frame: self.view.frame)
        
        self.listTableView!.delegate = self
        self.listTableView!.dataSource = self
        
        if ios8() {
        
            self.listTableView!.registerClass(UITableViewCell.self, forCellReuseIdentifier: "Cell")
            
        }
    
        
        
        self.view.addSubview(self.listTableView)
        
    }
    
    
    override func leftNavBar(sender: AnyObject) {
        
        println("override - leftNavBar")
        
    }
    override func rightNavBar(sender: AnyObject) {
        
        let addDetail = AddDetailViewController()
        
        self.navigationController.pushViewController(addDetail,animated:true)
        
    }
    
    func tableView(tableView: UITableView!, numberOfRowsInSection section: Int) -> Int {
        return self.listArray!.count
    }
    
    func tableView(tableView: UITableView!, cellForRowAtIndexPath indexPath: NSIndexPath!) -> UITableViewCell! {
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as UITableViewCell!
        cell.accessoryType = UITableViewCellAccessoryType.DisclosureIndicator
        cell.textLabel.text = self.listArray!.objectAtIndex(indexPath.row) as String
        return cell
    }
    
    func tableView(tableView: UITableView!, didSelectRowAtIndexPath indexPath: NSIndexPath!) {
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

