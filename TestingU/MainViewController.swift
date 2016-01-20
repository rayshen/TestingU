//
//  MainViewController.swift
//  TestingU
//
//  Created by shen on 16/1/20.
//  Copyright © 2016年 shen. All rights reserved.
//

import Cocoa

class MainViewController: NSViewController {

    
    var settingWinC:SettingWindowController?
    
    @IBAction func startButtonClick(sender: AnyObject) {
        let testVC=TestingViewController()
        //同一个Window内，直接替换contentView显示
        //必须要把下一个ViewController先加到window的contentViewController里，否则其上的按钮事件都会报错
        self.view.window?.contentViewController?.addChildViewController(testVC)
        self.view.window?.contentView=testVC.view
        
        //不同Window跳转,同上，必须加入到这个数组内，使用presentXXX的方式，效果有很多
//        self.view.window?.contentViewController?.addChildViewController(testVC)
//        self.presentViewControllerAsModalWindow(testVC)
    }
    
    @IBAction func settingButtonClick(sender: AnyObject) {
        //关闭窗口
//        self.view.window?.close()
        //新建窗口
        settingWinC=SettingWindowController()
        settingWinC!.showWindow(nil);

        //用局部变量是无法打开窗口的！！！至于为什么！！应该和对象的内存管理有关！
//        let settingWC=SettingWindowController()
//        settingWC.showWindow(nil);

    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
}
