//
//  mainVC.swift
//  binari
//
//  Created by 김부성 on 10/21/20.
//

import UIKit

class mainVC: UIViewController {
    @IBOutlet weak var profile: UIImageView!
    @IBOutlet weak var pinkbg: UIImageView!
    @IBOutlet weak var banner: UIImageView!
    //개 이름은 12자까지만 설정할수 있도록 할것
    
    let bgcolor = UIColor(red: 249/255, green: 249/255, blue: 249/255, alpha: 1.0)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        banner.layer.shadowColor = UIColor.black.cgColor // 색깔
        banner.layer.masksToBounds = false  // 내부에 속한 요소들이 UIView 밖을 벗어날 때, 잘라낼 것인지. 그림자는 밖에 그려지는 것이므로 false 로 설정
        banner.layer.shadowOffset = CGSize(width: 0, height: 4) // 위치조정
        banner.layer.shadowRadius = 5 // 반경
        banner.layer.shadowOpacity = 0.3 // alpha값
        banner.layer.shouldRasterize = true
        
        
        
        navigationController?.isNavigationBarHidden = false
        set_profile()
        self.view.backgroundColor = bgcolor
        // Do any additional setup after loading the view.
    }
    
    func set_profile () {
        profile.layer.cornerRadius = profile.frame.height/2
    }
    
}
