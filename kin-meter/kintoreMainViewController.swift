//
//  kintoreMainViewController.swift
//  kin-meter
//
//  Created by 笹倉 一也 on 2018/07/30.
//  Copyright © 2018年 笹倉 一也. All rights reserved.
//

import UIKit

class kintoreMainViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    
    
    @IBOutlet weak var mainTableView: UITableView!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        mainTableView.delegate = self
        mainTableView.dataSource = self
        
        if UserDefaults.standard.object(forKey: "TodoList") != nil {
            TodoKobetsunonakami = UserDefaults.standard.object(forKey: "TodoList") as! [String]
        }
        
    }
    
    
   
    
    @IBAction func editBtn(_ sender: Any) {
        
        
    }
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return TodoKobetsunonakami.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    
        let TodoCell : UITableViewCell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        
        TodoCell.textLabel!.text = TodoKobetsunonakami[indexPath.row]
        
        return TodoCell
    }
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

   

}
