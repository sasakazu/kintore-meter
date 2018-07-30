//
//  progressMenuViewController.swift
//  kin-meter
//
//  Created by 笹倉 一也 on 2018/07/30.
//  Copyright © 2018年 笹倉 一也. All rights reserved.
//

import UIKit

class progressMenuViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func cancelBtn(_ sender: Any) {
        
        dismiss(animated: true, completion: nil)
        
        
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

  

}
