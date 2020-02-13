//
//  ViewController.swift
//  HealthyHome
//
//  Created by apple on 2020/1/6.
//  Copyright © 2020 apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var isShowBackBtn: Bool?
//    var isShowBackBtn: Bool? {
//        willSet {//变化前默认false
//            addleftBarButtonItem()
//        }
//        didSet {//isShowBackBtn属性改变后，更新方法
//            addleftBarButtonItem()
//        }
//    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        isShowBackBtn = true
        
    }
    
    
    
    func addleftBarButtonItem() {
        let vces: Int = (self.navigationController?.viewControllers.count)!
        if vces > 1 && isShowBackBtn == true {
            self.navigationItem.leftBarButtonItem = UIBarButtonItem(image: UIImage(named: "back")?.withRenderingMode(.alwaysOriginal), style: .done, target: self, action: #selector(backClicked))
        }else {
            self.navigationItem.leftBarButtonItem = UIBarButtonItem(customView: UIView())
        }
    }

    @objc func backClicked() {
        let vces: Int = (self.navigationController?.viewControllers.count)!
        if vces > 1 {
            if (self.presentedViewController != nil) {
                self.dismiss(animated: true, completion: nil)
            }else {
                self.navigationController?.popViewController(animated: true)
            }
        }
    }
    
}

