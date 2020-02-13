 RAMAnimatedTabBarController库练习Demo
//问题
// 修改标签栏未选中时文字颜色
    item.setTitleTextAttributes([NSAttributedString.Key.foregroundColor : UIColor.white, NSAttributedString.Key.font : UIFont.systemFont(ofSize: 17)], for: .normal) 无效果normal状态时无法显示标签栏文字
//无法随意由子界面切换任意主界面
