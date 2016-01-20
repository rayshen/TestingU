//
//  SettingWindowController.swift
//  TestingU
//
//  Created by shen on 16/1/20.
//  Copyright © 2016年 shen. All rights reserved.
//

import Cocoa

class SettingWindowController: NSWindowController {
    override var windowNibName:String?{
        return "SettingWindowController"
    }
    
    @IBOutlet var settingWindow: NSWindow!
    
    override func windowDidLoad() {
        super.windowDidLoad()
    }
    
}
