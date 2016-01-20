//
//  TestingViewController.swift
//  TestingU
//
//  Created by shen on 16/1/20.
//  Copyright © 2016年 shen. All rights reserved.
//

import Cocoa

class TestingViewController: NSViewController {

    @IBOutlet weak var numberLabel: NSTextField!
    @IBOutlet weak var contentLabel: NSTextField!
    @IBOutlet weak var inputTextField: NSTextField!
    @IBOutlet weak var nextButton: NSButton!
    var gameOverVC:GameOverViewController!
    
    //数据源，可以自己从XML,JSON等方式读取
    var dataArray:NSArray = [
        ["number":"1","content":"testA(答案为：A)","answer":"A"],
        ["number":"2","content":"testB(答案为：B)","answer":"B"],
        ["number":"3","content":"testC(答案为：C)","answer":"C"],
    ]
    
    var currentIndex=0;
    
    @IBAction func nextCLK(sender: AnyObject) {
        
        if(inputTextField.stringValue==dataArray[currentIndex]["answer"] as! String){
            currentIndex++;
            if(currentIndex==dataArray.count){
                inputTextField.resignFirstResponder()
                gameOverVC=GameOverViewController()
                self.presentViewControllerAsSheet(gameOverVC)
            }else{
                showTestAtIndex(currentIndex)
            }
        }else{
            let alertView:NSAlert=NSAlert()
            alertView.messageText="答案错误"
            alertView.informativeText="只有答对才能进入下一题哦"
            alertView.beginSheetModalForWindow(self.view.window!, completionHandler: { (NSModalResponse) -> Void in
            })
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        showTestAtIndex(currentIndex)
    }
    
    func showTestAtIndex(indexNumber:Int){
        //清空输入框
        inputTextField.stringValue=""
        //修改题号
        let prefixStr:String="No."
        let displayNumber:String=prefixStr.stringByAppendingString(dataArray[currentIndex]["number"] as! String)
        numberLabel.stringValue=displayNumber
        //修改内容
        contentLabel.stringValue=dataArray[currentIndex]["content"] as! String
        
    }
    
    override var representedObject: AnyObject? {
        didSet {
            // Update the view, if already loaded.
        }
    }
    
}
