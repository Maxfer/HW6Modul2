//
//  WelcomeViewController.swift
//  HW6Modul2
//
//  Created by Максим Шкрябин on 07.06.2023.
//

import UIKit

class WelcomeViewController: UIViewController {

    @IBOutlet var welcomelabel: UILabel!
    @IBOutlet var logOutButton: UIButton!
    
    var userName: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let color1 = UIColor(red: 255 / 255, green: 0 / 255, blue: 0 / 255, alpha: 1.0).cgColor
        let color2 = UIColor(red: 255 / 255, green: 140 / 255, blue: 0 / 255, alpha: 1.0).cgColor
        let color3 = UIColor(red: 144 / 255, green: 0 / 255, blue: 187 / 255, alpha: 1.0).cgColor
        
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = self.view.bounds
        gradientLayer.colors = [color1, color2, color3]
        gradientLayer.startPoint = CGPoint(x: 0.0, y: 0.0)
        gradientLayer.endPoint = CGPoint(x: 0.0, y: 1.0)
        
        self.view.layer.insertSublayer(gradientLayer, at: 0)
        
        logOutButton.layer.cornerRadius = 20
        welcomelabel.text = "Welcome, \(userName ?? "")!"

    }
    
}
