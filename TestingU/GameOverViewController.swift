//
//  GameOverViewController.swift
//  OSXProject
//
//  Created by shen on 16/1/18.
//  Copyright © 2016年 shen. All rights reserved.
//

import Cocoa

class GameOverViewController: NSViewController {

    let disStr="恭喜您过关了"
    
    @IBOutlet weak var centerButton: NSTextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        centerButton.stringValue=disStr
    }
    
}
