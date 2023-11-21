//
//  ViewController.swift
//  iosstudy8-1
//
//  8주차 실습
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var textLabel: UILabel!
    @IBOutlet var idTextField: UITextField!
    @IBOutlet var pwTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func loginButton(_ sender: Any) {
        
        guard let id = idTextField.text else { return }
        guard let pw = pwTextField.text else { return }
        
        if (nil == UserDefaults.standard.string(forKey: id)) {
            textLabel.text = "존재하지 않는 ID"
        }
        else if (pw != UserDefaults.standard.string(forKey: id)) {
            textLabel.text = "비밀번호 불일치"
        }
        else if (pw == UserDefaults.standard.string(forKey: id)) {
            textLabel.text = "로그인 성공"
        }
        
    }
    
    @IBAction func signupButton(_ sender: Any) {
        
        guard let id = idTextField.text else { return }
        guard let pw = pwTextField.text else { return }
        
        if (id == UserDefaults.standard.string(forKey: id)) {
            textLabel.text = "이미 존재하는 ID"
        }
        else if (id != UserDefaults.standard.string(forKey: id)) {
            UserDefaults.standard.set(pw, forKey: id)
            textLabel.text = "회원가입 성공"
        }
    }
}

