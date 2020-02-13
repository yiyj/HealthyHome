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
        tabBar.selectedIndex = selectIndex
        UIApplication.shared.delegate?.window??.rootViewController = tabBar
    }
    
    // MARK: 切换跳转主界面 操作其他事件
    class func completionhandler(_ selectIndex: Int, _: () ->())  {

    }
    
    class func tabBarBadgeValue(_ selectIndex: Int, _ badgeValue: String) {
        let tabBar = MainTabBarVC()
        tabBar.selectedIndex = selectIndex
        tabBar.tabBarItem.badgeValue = badgeValue
    }

}

