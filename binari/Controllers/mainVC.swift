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
    
    let bgcolor = UIColor(red: 249/255, green: 249/255, blue: 249/255, alpha: 1.0)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationController?.isNavigationBarHidden = false
        set_profile()
        self.view.backgroundColor = bgcolor
        // Do any additional setup after loading the view.
    }
    
    func set_profile () {
        profile.layer.cornerRadius = profile.frame.height/2
    }
    
}
