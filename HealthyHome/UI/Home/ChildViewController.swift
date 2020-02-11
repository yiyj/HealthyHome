//
//  ChildViewController.swift
//  HealthyHome
//
//  Created by apple on 2020/1/8.
//  Copyright © 2020 apple. All rights reserved.
//

import UIKit

class ChildViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "子界面"
        self.view.backgroundColor = .red
        
    }
    

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        Common.tabBarSelectIndex(1)
    }

}
