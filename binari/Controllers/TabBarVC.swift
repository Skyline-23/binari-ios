//
//  TabBarVC.swift
//  binari
//
//  Created by 김부성 on 10/20/20.
//

import UIKit
import SideMenu

class TabBarVC: UITabBarController {
    
    var menu: SideMenuNavigationController?

    override func viewDidLoad() {
        super.viewDidLoad()
        setUpSlideMenu()
        
//        menu = SideMenuNavigationController(rootViewController: UIViewController())
//        menu?.leftSide = true
//
//        SideMenuManager.default.leftMenuNavigationController = menu
//        SideMenuManager.default.addPanGestureToPresent(toView: self.view)
//        SideMenuManager.default.menuPresentMode = .menuSlideIn
        
        UITabBar.appearance().tintColor = UIColor(red: 255/255, green: 129/255, blue: 129/255, alpha: 1.0)
        self.selectedIndex = 2
        // Do any additional setup after loading the view.
    }
    
    func setUpSlideMenu() {
        // sidenavigation 생성하기
        let sideNavigation = SideMenuNavigationController(rootViewController: UITableViewController())
        // 세팅하기
        sideNavigation.presentationStyle = .menuSlideIn
        sideNavigation.menuWidth = (self.view.frame.width / 2)
        
        // 스와이프 열고 닫기 켜기
        SideMenuManager.default.addPanGestureToPresent(toView: self.view)
        SideMenuManager.default.addScreenEdgePanGesturesToPresent(toView: self.view)
    }
    
    @IBAction func didTabMenu(_ sender: Any) {
        present(SideMenuManager.default.leftMenuNavigationController!, animated: true)
    }
}
