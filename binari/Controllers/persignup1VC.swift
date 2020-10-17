//
//  persignup1.swift
//  binari
//
//  Created by 김부성 on 10/10/20.
//

import UIKit
import SkyFloatingLabelTextField

class persignup1VC: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        name_TF()
        p_number_TF()
        code_TF()
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
        let nameTF = SkyFloatingLabelTextField(frame: CGRect(x: (self.view.frame.width - 268) / 2, y: 230 , width: 268, height: 45))
        // y값 이전 칸의 53씩 더할것.
        nameTF.placeholder = "이름(실명 입력)"
        nameTF.title = "이름"
        nameTF.textColor = darkGreyColor
        nameTF.lineColor = lightGreyColor
        nameTF.selectedLineColor = pinkcolor
        nameTF.selectedTitleColor = pinkcolor
        nameTF.tag = 1
        self.view.addSubview(nameTF)
    }
    
    func p_number_TF() {
        let p_number = SkyFloatingLabelTextField(frame: CGRect(x: (self.view.frame.width - 268) / 2, y: 283 , width: 268, height: 45))
        p_number.placeholder = "전화번호('-' 제외)"
        p_number.title = "전화번호"
        p_number.textColor = darkGreyColor
        p_number.lineColor = lightGreyColor
        p_number.selectedLineColor = pinkcolor
        p_number.selectedTitleColor = pinkcolor
        p_number.tag = 2
        self.view.addSubview(p_number)
    }
    
    func code_TF() {
        let code = SkyFloatingLabelTextField(frame: CGRect(x: (self.view.frame.width - 268) / 2, y: 336 , width: 268, height: 45))
        code.placeholder = "인증번호 입력"
        code.title = "인증번호"
        code.textColor = darkGreyColor
        code.lineColor = lightGreyColor
        code.selectedLineColor = pinkcolor
        code.selectedTitleColor = pinkcolor
        code.tag = 3
        self.view.addSubview(code)
    }
    @IBAction func submitbtnclicked(_ sender: Any) {
        var data = self.view.viewWithTag(1) as! UITextField
        let name : String = data.text!
        data = self.view.viewWithTag(2) as! UITextField
        let p_number : String = data.text!
        data = self.view.viewWithTag(3) as! UITextField
        let code : String = data.text!
        print("이름 : \(name)")
        print("전화번호 : \(p_number)")
        print("인증번호 : \(code)")
    }
    
    
}
