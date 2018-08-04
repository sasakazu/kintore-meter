//
//  intervalViewController.swift
//  kin-meter
//
//  Created by 笹倉 一也 on 2018/08/04.
//  Copyright © 2018年 笹倉 一也. All rights reserved.
//

import UIKit

class intervalViewController: UIViewController {
    
    weak var timer: Timer!
    var startTime = Date()
    
    
    
    
    @IBOutlet weak var minute: UILabel!
    @IBOutlet weak var seconds: UILabel!
    @IBOutlet weak var miniSeconds: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    
    @IBAction func start(_ sender: Any) {
        
        if timer != nil{
            // timerが起動中なら一旦破棄する
            timer.invalidate()
        }
        
        timer = Timer.scheduledTimer(
            timeInterval: 0.01,
            target: self,
            selector: #selector(self.timerCounter),
            userInfo: nil,
            repeats: true)
        
        startTime = Date()
        
    }
    
    
    @IBAction func stop(_ sender: Any) {
        
        if timer != nil{
            timer.invalidate()
            
            minute.text = "00"
            seconds.text = "00"
            miniSeconds.text = "00"
        }
        
    }
    
    @IBAction func reset(_ sender: Any) {
    }
    
    @objc func timerCounter() {
    
        // タイマー開始からのインターバル時間
        let currentTime = Date().timeIntervalSince(startTime)
        
        // fmod() 余りを計算
        let minutelo = (Int)(fmod((currentTime/60), 60))
        // currentTime/60 の余り
        let second = (Int)(fmod(currentTime, 60))
        // floor 切り捨て、小数点以下を取り出して *100
        let msec = (Int)((currentTime - floor(currentTime))*100)
        
        // %02d： ２桁表示、0で埋める
        let sMinute = String(format:"%02d", minutelo)
        let sSecond = String(format:"%02d", second)
        let sMsec = String(format:"%02d", msec)
        
        minute.text = sMinute
        seconds.text = sSecond
        miniSeconds.text = sMsec
        
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

  
    
    

}
