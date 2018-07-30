//
//  kintoreMainViewController.swift
//  kin-meter
//
//  Created by 笹倉 一也 on 2018/07/30.
//  Copyright © 2018年 笹倉 一也. All rights reserved.
//

import UIKit

class kintoreMainViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    let data = ["ピカチュウ", "コラッタ", "イーブイ", "カビゴン", "ポッポ"]
    
    
    
    @IBOutlet weak var mainTableView: UITableView!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        mainTableView.delegate = self
        mainTableView.dataSource = self
        
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        
        cell.textLabel?.text = data[indexPath.row]
        
        return cell
    
    }
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

   

}
