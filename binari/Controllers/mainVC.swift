//
//  mainVC.swift
//  binari
//
//  Created by 김부성 on 10/21/20.
//

import UIKit

class mainVC: UIViewController {
    @IBOutlet weak var profile: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationController?.isNavigationBarHidden = false
        profile.layer.cornerRadius = profile.frame.height/2
        profile.layer.borderWidth = 1
        profile.layer.borderColor = UIColor.clear.cgColor
        // Do any additional setup after loading the view.
    }
    
}
