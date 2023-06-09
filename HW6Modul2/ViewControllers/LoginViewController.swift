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
    
    private let userMaxim = User.getUser()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        userNameTF.text = userMaxim.login
        passwordTF.text = userMaxim.password
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        //guard let welcomeVC = segue.destination as? WelcomeViewController else { return }
        
        guard let tabBarVC = segue.destination as? UITabBarController else { return }
        guard let viewControllers = tabBarVC.viewControllers else { return }
        viewControllers.forEach { viewController in
            if let welcomeVC = viewController as? WelcomeViewController {
                welcomeVC.userName = userNameTF.text ?? ""
            } else if let personVC = viewController as? PersonViewController {
                personVC.titleL = userMaxim.person.surname + " " + userMaxim.person.name
                personVC.name = userMaxim.person.name
                personVC.surname = userMaxim.person.surname
                personVC.gender = userMaxim.person.gender.rawValue
                personVC.age = String(userMaxim.person.age)
            } else if let navigationVC = viewController as? UINavigationController {
                guard let workOneVC = navigationVC.topViewController as? WorkOneViewController else { return }
                workOneVC.personValue = userMaxim.person
                }
            }
        }
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super .touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    // MARK: — IBAction
    
    @IBAction func logInDidTapped() {
        if userNameTF.text == userMaxim.login , passwordTF.text == userMaxim.password {
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
        ? showAlert(Title: "Oops!", Message: "Your login is \(userMaxim.login)")
        : showAlert(Title: "Oops!", Message: "Your password is \(userMaxim.password)")
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
