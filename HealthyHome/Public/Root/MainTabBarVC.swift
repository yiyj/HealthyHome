//
//  MainTabBarVC.swift
//  HealthyHome
//
//  Created by apple on 2020/1/6.
//  Copyright © 2020 apple. All rights reserved.
//

import UIKit
import RAMAnimatedTabBarController

class MainTabBarVC:RAMAnimatedTabBarController, UITabBarControllerDelegate {

    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        guard self.hideTabbarLine else {// 隐藏 tabbar 上部的线
            return
        }
    }
    
    /// 这里需要注意先后顺序，必须是把此方法放到加载空间之后
    override func viewDidLoad() {
        super.viewDidLoad()
        
        commitInitView()
        
        addAllChildsControllers()
    
        //添加阴影
//        tabBar.layer.shadowColor = UIColor.lightGray.cgColor
//        tabBar.layer.shadowOffset = CGSize(width: 0, height: -1)
//        tabBar.layer.shadowOpacity = 1
        
    }

    func addAllChildsControllers()  {
        //首页
        addChildVC(childVC: HomeVC(), title: "首页", imageNormal: "TabBarNormal_Home", imageSelect: "TabBarSelect_Home")
        addChildVC(childVC: HealthyVC(), title: "健康", imageNormal: "TabBarNormal_Healthy", imageSelect: "TabBarSelect_Healthy")
        addChildVC(childVC: CenterVC(), title: "发布", imageName: "tabbar_database")
        addChildVC(childVC: FriendsVC(), title: "朋友圈", imageNormal: "TabBarNormal_Friends", imageSelect: "TabBarSelect_Friends")
        addChildVC(childVC: MeVC(), title: "我的", imageNormal: "TabBarNormal_Me", imageSelect: "TabBarSelect_Me")
    }
   
    func addChildVC(childVC: UIViewController, title: String?, imageNormal: String?, imageSelect: String?) {
        
        childVC.title = title
        let nav = NavigationController(rootViewController: childVC)
        let item = RAMAnimatedTabBarItem(title: title, image: UIImage(imageLiteralResourceName: imageNormal ?? ""), selectedImage: UIImage(named: imageSelect ?? "")?.withRenderingMode(.alwaysOriginal))
        // 修改标签栏未选中时文字颜色
        item.setTitleTextAttributes([NSAttributedString.Key.foregroundColor : UIColor.hexColor("515151")], for: .normal)
        // 修改标签栏选中时文字颜色
        item.setTitleTextAttributes([NSAttributedString.Key.foregroundColor : UIColor.hexColor("03f7e8")], for: .selected)
        //  你这个选择这其中的一个RAMFumeAnimation, RAMBounceAnimation, RAMRotationAnimation, RAMFrameItemAnimation, RAMTransitionAnimation
        // 你也可以为你的每一个item加载不同的动画，可以根据自己需求添加
        let animation = RAMBounceAnimation()
        item.animation = animation
        //  这里需要先把导航控制器，加入tabbar控制器上，然后添加item，这个顺序错了，也是没有动画效果的。
        addChild(nav)
        nav.tabBarItem = item
    }
    
    func addChildVC(childVC: UIViewController, title:String, imageName: String) {
        childVC.title = title
        let nav = NavigationController(rootViewController: childVC)
        let item = RAMAnimatedTabBarItem(title: title, image: UIImage(named: imageName)?.withRenderingMode(UIImage.RenderingMode.alwaysOriginal), selectedImage: UIImage(named: imageName)?.withRenderingMode(.alwaysOriginal))
        // 修改标签栏未选中时文字颜色
        item.setTitleTextAttributes([NSAttributedString.Key.foregroundColor : UIColor.white, NSAttributedString.Key.font : UIFont.systemFont(ofSize: 17)], for: .normal)
        // 修改标签栏选中时文字颜色
        item.setTitleTextAttributes([NSAttributedString.Key.foregroundColor : UIColor.white, NSAttributedString.Key.font : UIFont.systemFont(ofSize: 17)], for: .selected)
        item.imageInsets = UIEdgeInsets(top: -10, left: 0, bottom: 0, right: 0)
        item.titlePositionAdjustment = UIOffset(horizontal: 0, vertical: -30)
        let animation = RAMBounceAnimation()
        item.animation = animation
        addChild(nav)
        nav.tabBarItem = item
    }
    
    lazy var hideTabbarLine: Bool = {
        // 隐藏 tabbar 上部的线
        for view in self.tabBar.subviews {
            for image in view.subviews {
                if image.height < 2 {
                    image.isHidden = true
                    return true
                }
            }
        }
        return true
    }()
}


extension MainTabBarVC {
    func commitInitView() {
        view.backgroundColor = .white
        tabBar.isTranslucent = false
//        tabBar.tintColor = .blue
        //tabBar 底部工具栏背景颜色 (以下两个都行)
//        tabBar.barTintColor = .white
//        tabBar.backgroundColor = .white
    }
}
