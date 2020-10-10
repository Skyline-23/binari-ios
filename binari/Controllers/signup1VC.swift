//
//  signup1VC.swift
//  binari
//
//  Created by 김부성 on 10/10/20.
//

import UIKit

class signup1VC: UIViewController {
    @IBOutlet weak var perbtn: UIButton!
    @IBOutlet weak var docbtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        

        // Do any additional setup after loading the view.
    }
    

    @IBAction func perbtnclicked(_ sender: Any) {
        perbtn.setImage(UIImage(named: "perbtn2"), for: .normal)
        docbtn.setImage(UIImage(named: "docbtn1"), for: .normal)
    }
    @IBAction func docbtnclicked(_ sender: Any) {
        perbtn.setImage(UIImage(named: "perbtn1"), for: .normal)
        docbtn.setImage(UIImage(named: "docbtn2"), for: .normal)
    }
    @IBAction func nextbtnclicked(_ sender: Any) {
        if (docbtn.currentImage == UIImage(named: "docbtn2")) {
            self.performSegue(withIdentifier: "signupfordoc", sender: self)
        }
        else {
            self.performSegue(withIdentifier: "signupforper", sender: self)
        }
    }
    @IBAction func backbtnclicked(_ sender: Any) {
        self.navigationController?.popToRootViewController(animated: true)
    }
    
}
