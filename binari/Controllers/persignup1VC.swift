//
//  persignup1.swift
//  binari
//
//  Created by 김부성 on 10/10/20.
//

import UIKit
import SkyFloatingLabelTextField
import Alamofire

class persignup1VC: UIViewController, UITextFieldDelegate {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        name_TF()
        city_TF()
        email_TF()
        id_Tf()
        pw_TF()
        check_pw_TF()
        // Do any additional setup after loading the view.
    }
    

    @IBAction func backbtnclicked(_ sender: Any) {
        self.navigationController?.popToRootViewController(animated: true)
    }
    
    //터치가 시작됬을 경우, 키보드를 닫음
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    let pinkcolor = UIColor(red: 255/255, green: 129/255, blue: 129/255, alpha: 1.0)
    let lightGreyColor = UIColor(red: 196/255, green: 196/255, blue: 196/255, alpha: 1.0)
    let darkGreyColor = UIColor(red: 144/255, green: 144/255, blue: 144/255, alpha: 1.0)
    
    func name_TF() {
        let name = SkyFloatingLabelTextField(frame: CGRect(x: (self.view.frame.width - 268) / 2, y: 177 , width: 268, height: 45))
        // y값 이전 칸의 53씩 더할것.
        name.placeholder = "이름(실명 입력)"
        name.title = "이름"
        name.textColor = darkGreyColor
        name.lineColor = lightGreyColor
        name.selectedLineColor = pinkcolor
        name.selectedTitleColor = pinkcolor
        name.autocapitalizationType = UITextAutocapitalizationType.none
        name.autocorrectionType = UITextAutocorrectionType.no
        name.tag = 1
        self.view.addSubview(name)
    }
    
    func city_TF() {
        let city = SkyFloatingLabelTextField(frame: CGRect(x: (self.view.frame.width - 268) / 2, y: 230 , width: 268, height: 45))
        city.placeholder = "도시 입력"
        city.title = "도시"
        city.textColor = darkGreyColor
        city.lineColor = lightGreyColor
        city.selectedLineColor = pinkcolor
        city.selectedTitleColor = pinkcolor
        city.autocapitalizationType = UITextAutocapitalizationType.none
        city.autocorrectionType = UITextAutocorrectionType.no
        city.tag = 2
        self.view.addSubview(city)
    }
    
    func email_TF() {
        let email = SkyFloatingLabelTextField(frame: CGRect(x: (self.view.frame.width - 268) / 2, y: 288 , width: 268, height: 45))
        email.placeholder = "이메일 입력"
        email.title = "이메일"
        email.textColor = darkGreyColor
        email.lineColor = lightGreyColor
        email.selectedLineColor = pinkcolor
        email.selectedTitleColor = pinkcolor
        email.autocapitalizationType = UITextAutocapitalizationType.none
        email.autocorrectionType = UITextAutocorrectionType.no
        email.textContentType = UITextContentType.emailAddress
        email.delegate = self
        email.tag = 3
        self.view.addSubview(email)
    }
    
    func id_Tf() {
        let Id = SkyFloatingLabelTextField(frame: CGRect(x: (self.view.frame.width - 268) / 2, y: 341 , width: 268, height: 45))
        Id.placeholder = "아이디 입력"
        Id.title = "아이디"
        Id.textColor = darkGreyColor
        Id.lineColor = lightGreyColor
        Id.selectedLineColor = pinkcolor
        Id.selectedTitleColor = pinkcolor
        Id.autocapitalizationType = UITextAutocapitalizationType.none
        Id.autocorrectionType = UITextAutocorrectionType.no
        Id.textContentType = UITextContentType.nickname
        Id.tag = 4
        self.view.addSubview(Id)
    }
    
    func pw_TF() {
        let pw = SkyFloatingLabelTextField(frame: CGRect(x: (self.view.frame.width - 268) / 2, y: 394 , width: 268, height: 45))
        pw.placeholder = "비밀번호 입력"
        pw.title = "비밀번호"
        pw.textColor = darkGreyColor
        pw.lineColor = lightGreyColor
        pw.selectedLineColor = pinkcolor
        pw.selectedTitleColor = pinkcolor
        pw.autocapitalizationType = UITextAutocapitalizationType.none
        pw.autocorrectionType = UITextAutocorrectionType.no
        pw.textContentType = UITextContentType.password
        pw.isSecureTextEntry = true
        pw.tag = 6
        self.view.addSubview(pw)
    }
    
    func check_pw_TF() {
        let check_pw = SkyFloatingLabelTextField(frame: CGRect(x: (self.view.frame.width - 268) / 2, y: 447 , width: 268, height: 45))
        check_pw.placeholder = "비밀번호 입력"
        check_pw.title = "비밀번호"
        check_pw.textColor = darkGreyColor
        check_pw.lineColor = lightGreyColor
        check_pw.selectedLineColor = pinkcolor
        check_pw.selectedTitleColor = pinkcolor
        check_pw.autocapitalizationType = UITextAutocapitalizationType.none
        check_pw.autocorrectionType = UITextAutocorrectionType.no
        check_pw.textContentType = UITextContentType.password
        check_pw.isSecureTextEntry = true
        check_pw.tag = 5
        self.view.addSubview(check_pw)
    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
            if let text = textField.text {
                if let floatingLabelTextField = textField as? SkyFloatingLabelTextField {
                    if(text.count < 3 || !text.contains("@") || !text.contains(".")) {
                        floatingLabelTextField.errorMessage = "이메일 형식이 아닙니다!"
                    }
                    else {
                        // The error message will only disappear when we reset it to nil or empty string
                        floatingLabelTextField.errorMessage = ""
                    }
                }
            }
            return true
        }

    
    @IBAction func submitbtnclicked(_ sender: Any) {
        var data = self.view.viewWithTag(1) as! UITextField
        let name : String = data.text!
        data = self.view.viewWithTag(2) as! UITextField
        let city : String = data.text!
        data = self.view.viewWithTag(3) as! UITextField
        let email : String = data.text!
        data = self.view.viewWithTag(4) as! UITextField
        let Id : String = data.text!
        data = self.view.viewWithTag(5) as! UITextField
        let pw : String = data.text!
        data = self.view.viewWithTag(6) as! UITextField
        let check_pw : String = data.text!
        if (pw != check_pw) {
            let alart = UIAlertController(title: nil, message: "비밀번호가 일치하지 않습니다!", preferredStyle: .alert)
            alart.addAction(UIAlertAction(title: "확인", style: .default, handler: nil))
            self.present(alart, animated: true)
            return
        }
        if (name == "" || city == "" || email == "" || Id == "" || pw == "" || check_pw == "") {
            let alart = UIAlertController(title: nil, message: "모든 항목을 채워주세요!", preferredStyle: .alert)
            alart.addAction(UIAlertAction(title: "확인", style: .default, handler: nil))
            self.present(alart, animated: true)
            return
        }
        
        let url = "http://10.80.161.119:8000/api/auth/register"
        
        let param: Parameters = [
            "id": Id,
            "pw": pw,
            "name": name,
            "address": city,
            "email": email
        ]
        
        let alamo = AF.request( url, method: .post, parameters: param, encoding: JSONEncoding.default)
        let configuration = URLSessionConfiguration.default
        // timeout시간 설정
        configuration.timeoutIntervalForRequest = TimeInterval(1)
        alamo.responseJSON() { response in
            switch response.result {
            case .success(let value):
                if let nsDic = value as? NSDictionary{
                    print(nsDic)
                    if let message = nsDic["message"] as? String {
                        let alart = UIAlertController(title: nil, message: message, preferredStyle: .alert)
                        alart.addAction(UIAlertAction(title: "확인", style: .default, handler: nil))
                        self.present(alart, animated: true)
                        return
                    }
                    let nextVC = self.storyboard?.instantiateViewController(identifier: "persignupVC2")
                    nextVC?.modalTransitionStyle = .coverVertical
                    self.present(nextVC!, animated: true, completion: nil)
                }
                
            case .failure(_):
                let alart = UIAlertController(title: nil, message: "네트워크를 다시 확인해주세요", preferredStyle: .alert)
                alart.addAction(UIAlertAction(title: "확인", style: .default, handler: nil))
                self.present(alart, animated: true)
                return
            }
        }
    }
}
