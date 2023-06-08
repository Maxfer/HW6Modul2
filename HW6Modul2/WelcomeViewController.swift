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
    
    private let topColor = UIColor(
        red: 255 / 255,
        green: 0 / 255,
        blue: 0 / 255,
        alpha: 1.0
    )
    private let centerColor = UIColor(
        red: 255 / 255,
        green: 140 / 255,
        blue: 0 / 255,
        alpha: 1.0
    )
    private let bottomColor = UIColor(
        red: 144 / 255,
        green: 0 / 255,
        blue: 187 / 255,
        alpha: 1.0
    )
    
    
    var userName: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.addVerticalGradientLayer(
            topColor: topColor,
            centerColor: centerColor,
            bottomColor: bottomColor
        )
        logOutButton.layer.cornerRadius = 20
        welcomelabel.text = "Welcome, \(userName ?? "")!"
    }
}

// MARK: — Set background color
extension UIView {
    func addVerticalGradientLayer(topColor: UIColor, centerColor: UIColor ,bottomColor: UIColor) {
        let gradientLayer = CAGradientLayer()
        
        gradientLayer.frame = bounds
        gradientLayer.colors = [topColor, centerColor, bottomColor]
        gradientLayer.locations = [0.0, 1.0]
        gradientLayer.startPoint = CGPoint(x: 0, y: 0)
        gradientLayer.endPoint = CGPoint(x: 0, y: 1)
        
        layer.insertSublayer(gradientLayer, at: 0)
    }
}
