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
        imageView.contentMode = .scaleAspectFit
    imageView.imageFromURL("https://ss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=3337020166,4184020880&fm=26&gp=0.jpg", placeholder: UIImage(named: "tabbar_database")!, fadeIn: true, shouldCacheImage: true) { (UIIamge) in
            
        }
        self.view.addSubview(imageView)
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        let childVC = ChildViewController()
        self.navigationController?.pushViewController(childVC, animated: true)
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
