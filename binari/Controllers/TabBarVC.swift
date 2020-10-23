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
        
        UITabBar.appearance().tintColor = UIColor(red: 255/255, green: 129/255, blue: 129/255, alpha: 1.0)
        self.selectedIndex = 2
        // Do any additional setup after loading the view.
    }
    
    func setUpSlideMenu() {
        // sidenavigation 생성하기
        let sideMenu = sidemenuVC(nibName: "sidemenuVC", bundle: nil)
        let sideNavigation = SideMenuNavigationController(rootViewController: sideMenu)
        
        //세팅하기
        sideNavigation.animationOptions = .curveEaseInOut
        sideNavigation.allowPushOfSameClassTwice = true
        sideNavigation.leftSide = true
        SideMenuManager.default.leftMenuNavigationController = sideNavigation
        sideNavigation.presentationStyle = .menuSlideIn
        sideNavigation.menuWidth = (self.view.frame.width / 2)
        sideNavigation.presentingViewControllerUseSnapshot = true
        
        // 스와이프 열고 닫기 켜기
        SideMenuManager.default.addPanGestureToPresent(toView: self.view)
        SideMenuManager.default.addScreenEdgePanGesturesToPresent(toView: self.view)
    }
    
    @IBAction func didTabMenu(_ sender: Any) {
        present(SideMenuManager.default.leftMenuNavigationController!, animated: true, completion: nil)
    }
}
