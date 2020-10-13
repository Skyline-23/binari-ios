//
//  ViewController.swift
//  binari
//
//  Created by 김부성 on 10/9/20.
//

import UIKit
import Alamofire

class loginVC: UIViewController {
    @IBOutlet weak var Idtextfield: UITextField!
    @IBOutlet weak var PWtextfield: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "loginbg.png")!)
        buildtextfield()
    }
    
    //터치가 시작됬을 경우, 키보드를 닫음
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    //textfield의 모서리값을 설정함
    func buildtextfield(){
            let borderColor : UIColor = UIColor(red: 0.85, green: 0.85, blue: 0.85, alpha: 1.0)
            Idtextfield.layer.borderWidth = 0.5
            Idtextfield.layer.borderColor = borderColor.cgColor
            Idtextfield.layer.cornerRadius = 10.0
            Idtextfield.attributedPlaceholder = NSAttributedString(string: "아이디를 입력하세요",attributes: [NSAttributedString.Key.foregroundColor : UIColor.white])
            PWtextfield.layer.borderWidth = 0.5
            PWtextfield.layer.borderColor = borderColor.cgColor
            PWtextfield.layer.cornerRadius = 10.0
            PWtextfield.attributedPlaceholder = NSAttributedString(string: "비밀번호를 입력하세요", attributes: [NSAttributedString.Key.foregroundColor : UIColor.white])
        }
    @IBAction func loginbtnclicked(_ sender: Any) {
        let url = "http://10.80.163.197:8080/api/auth/login"
        let id = Idtextfield.text
        let pw = PWtextfield.text
        
        let param: Parameters = [
            "id": id!,
            "pw": pw!
        ]
        
        let alamo = AF.request(url, method: .post, parameters: param, encoding: JSONEncoding.default)
        alamo.responseJSON() { response in
            print(response.value! as? [String: Any])
//            let alart = UIAlertController(title: nil, message: response.value! as? [String: Any], preferredStyle: .alert)
//            alart.addAction(UIAlertAction(title: "확인", style: .default, handler: nil))
//            self.present(alart, animated: true)
//            return
        }
    }
    
}
