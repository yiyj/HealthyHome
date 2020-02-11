//
//  Common.swift
//  HealthyHome
//
//  Created by apple on 2020/2/11.
//  Copyright © 2020 apple. All rights reserved.
//

import UIKit

class Common: NSObject {
    
    // MARK: 切换跳转主界面
    class func tabBarSelectIndex(_ selectIndex: Int) {
        let tabBar = MainTabBarVC()
        if selectIndex > tabBar.viewControllers?.count ?? 1 {
            return
        }
        tabBar.selectedIndex = selectIndex
        UIApplication.shared.delegate?.window??.rootViewController = tabBar
    }

}

