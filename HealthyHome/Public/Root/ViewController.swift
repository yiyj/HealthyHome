//
//  ViewController.swift
//  HealthyHome
//
//  Created by apple on 2020/1/6.
//  Copyright © 2020 apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        


    }
    
    

    func backClicked() {
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

