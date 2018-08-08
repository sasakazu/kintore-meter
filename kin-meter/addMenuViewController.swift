//
//  addMenuViewController.swift
//  kin-meter
//
//  Created by 笹倉 一也 on 2018/07/30.
//  Copyright © 2018年 笹倉 一也. All rights reserved.
//

import UIKit


var TodoKobetsunonakami = [String]()


class addMenuViewController: UIViewController {
    
    @IBOutlet weak var menuTextField: UITextField!
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func addBtn(_ sender: Any) {
        
        TodoKobetsunonakami.append(menuTextField.text!)
        
        UserDefaults.standard.set( TodoKobetsunonakami, forKey: "TodoList" )
        
        let storyboard: UIStoryboard = self.storyboard!
        
        let nextView = storyboard.instantiateViewController(withIdentifier: "tab")
        
        self.present(nextView, animated: true, completion: nil)
        
        
    }
    
  
    
    @IBAction func cancelBtn(_ sender: Any) {
        
        dismiss(animated: true, completion: nil)
        
    }
    
    
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

 

}
