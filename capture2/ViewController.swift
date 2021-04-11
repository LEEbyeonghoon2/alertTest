//
//  ViewController.swift
//  capture2
//
//  Created by 이병훈 on 2021/04/11.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var allowText: UILabel!
    
    @IBAction func login(_ sender: Any) {
        let title = "iTunes Store에 로그인"
        let message = "사용자 Apple ID ex@ex.com의 암호를 입력하세요"
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let cancel = UIAlertAction(title: "취소", style: .cancel)
        let ok = UIAlertAction(title: "확인", style: .default) { (_) in
            let id = alert.textFields?[0].text
            let pwd = alert.textFields?[1].text
            
            if id == "HoonIOS" && pwd == "123" {
                self.allowText.text = "인증 성공!"
                self.allowText.textColor = .green
            } else {
                self.allowText.text = "인증 실패!"
                self.allowText.textColor = .red
            }
            
        }
        alert.addAction(ok)
        alert.addAction(cancel)
        
        alert.addTextField() { (tf) in
            tf.placeholder = "아이디를 입력하세요"
            tf.isSecureTextEntry = false
            
        }
        alert.addTextField() { (tf) in
            tf.placeholder = "비밀번호를 입력하세요"
            tf.isSecureTextEntry = true
        }
        
        self.present(alert, animated: true)
    }
    
}

