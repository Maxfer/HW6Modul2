//
//  ViewController.swift
//  HW6Modul2
//
//  Created by Максим Шкрябин on 07.06.2023.
//

import UIKit

final class LoginViewController: UIViewController {
    
    // MARK: — IBOutlet
    
    @IBOutlet var userNameTF: UITextField!
    @IBOutlet var passwordTF: UITextField!
    
    private let userName = "user"
    private let userPassword = "123"
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeVC = segue.destination as? WelcomeViewController else { return }
        welcomeVC.userName = userNameTF.text
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super .touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    // MARK: — IBAction
    
    @IBAction func logInDidTapped() {
        if userNameTF.text == userName , passwordTF.text == userPassword {
            performSegue(withIdentifier: "showWelcomeVC", sender: nil)
        } else {
                showAlert(
                    Title: "Invalid login or password",
                    Message: "Please, enter correct login and password",
                    handler: { _ in self.passwordTF.text = "" }
                )
        }
    }
    
    @IBAction func forgotLoginPasswordDidTapped(_ sender: UIButton) {
        sender.tag == 1
        ? showAlert(Title: "Oops!", Message: "Your login is \(userName)")
        : showAlert(Title: "Oops!", Message: "Your password is \(userPassword)")
    }
    
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        userNameTF.text = ""
        passwordTF.text = ""
    }
    
}

extension LoginViewController {
    
    private func showAlert(Title title: String,
                           Message message: String,
                           handler: ((UIAlertAction) -> Void)? = nil) {
        
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default, handler: handler)
        
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}
