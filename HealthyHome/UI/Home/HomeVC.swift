//
//  HomeVC.swift
//  HealthyHome
//
//  Created by apple on 2020/1/6.
//  Copyright © 2020 apple. All rights reserved.
//

import UIKit

class HomeVC: UIViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let imageView = UIImageView(frame: self.view.bounds)
    imageView.imageFromURL("https://dss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=3105600238,693167464&fm=26&gp=0.jpg", placeholder: UIImage(named: "tabbar_database")!, fadeIn: true, shouldCacheImage: true) { (UIIamge) in
            
        }
        self.view.addSubview(imageView)
        
    }
  
//    lazy var tableView: UITableView = {
//        let tableView = UITableView(frame: CGRect.zero, style: UITableView.Style.plain)
//        tableView.backgroundColor = .white
//        tableView.delegate = self
//        tableView.dataSource = self
//        tableView.separatorStyle = .none
//        tableView.tableFooterView = UIView()
//        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cellId")
//        return tableView
//    }()

}
