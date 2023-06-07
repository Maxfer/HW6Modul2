//
//  ViewController.swift
//  HW6Modul2
//
//  Created by Максим Шкрябин on 07.06.2023.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet var userNameTF: UITextField!
    @IBOutlet var passwordTF: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if (userNameTF.text != "user" && userNameTF.text != "Max")
            || passwordTF.text != "123" {
                showAlert(
                    withTitle: "Invalid login or password",
                    andMessage: "Please, enter correct login and password"
                )
                userNameTF.text = ""
                passwordTF.text = ""
        } else {
            guard let welcomeVC = segue.destination as? WelcomeViewController else { return }
            welcomeVC.userName = userNameTF.text
        }
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super .touchesBegan(touches, with: event)
        view.endEditing(true)
        
    }
    

    @IBAction func forgotUserNameDidTapped() {
        showAlert(
            withTitle: "Oops!",
            andMessage: "Your login is user or Max"
        )
        userNameTF.text = ""
        passwordTF.text = ""
    }
    
    @IBAction func forgotPasswordDidTapped() {
        showAlert(
            withTitle: "Oops!",
            andMessage: "Your password is 123"
        )
        passwordTF.text = ""
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        
//        guard let welcomeVC = unwindSegue.source as? WelcomeViewController else { return }
        userNameTF.text = ""
        passwordTF.text = ""
    }
    
    
}

extension LoginViewController {
    
    private func showAlert(withTitle title: String, andMessage message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) //{ _ in
//            self.passwordTF.text = ""
//        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}
