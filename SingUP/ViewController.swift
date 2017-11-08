//
//  ViewController.swift
//  SingUP
//
//  Created by 박성진 on 2017. 11. 8..
//  Copyright © 2017년 Soondori. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var idTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var telTextField: UITextField!
    @IBOutlet weak var blogTextField: UITextField!
    @IBOutlet weak var resultTextView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //nameTextField.delegate = self
    }

    @IBAction func signUpAction(_ sender: AnyObject) {
        resultTextView.text = "\(nameTextField.text)  님 가입을 축하 합니다."
    }
  
    //textField 에서 엔터가 입력될 경우 호출
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        //nameTextField.resignFirstResponder()//엔터입력 이벤트
        
        textField.resignFirstResponder()
        return true
    }
    
    //바탕화면 터치시 반응
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)//키보드가 비활성화
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

