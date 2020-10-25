//
//  sidemenuVC.swift
//  binari
//
//  Created by 김부성 on 10/23/20.
//

import UIKit
import SideMenu

class sidemenuVC: UIViewController {
    @IBOutlet weak var namelbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let ad = UIApplication.shared.delegate as? AppDelegate
        print(ad?.name ?? String.self)
        namelbl.text = ad?.name
        // Do any additional setup after loading the view.
    }
    @IBAction func backbtnclicked(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    

    @IBAction func logoutbtnclicked(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let back = (storyboard.instantiateViewController(withIdentifier: "loginVC")) as! loginVC
        show(back, sender: self)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
