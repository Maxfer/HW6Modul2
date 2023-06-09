//
//  PersonViewController.swift
//  HW6Modul2
//
//  Created by Максим Шкрябин on 09.06.2023.
//

import UIKit

class PersonViewController: UIViewController {

    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var fotoImageView: UIImageView!
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var surnameLabel: UILabel!
    @IBOutlet var genderLabel: UILabel!
    @IBOutlet var ageLabel: UILabel!
    
    var titleL = ""
    var fotoIV = UIImage(named: "foto")//(data: )
    var name = ""
    var surname = ""
    var gender = ""
    var age = ""
    
    private let topColor = UIColor(red: 255 / 255,
                                    green: 0 / 255,
                                    blue: 0 / 255,
                                    alpha: 1.0)
    private let centerColor = UIColor(red: 255 / 255,
                                    green: 140 / 255,
                                    blue: 0 / 255,
                                    alpha: 1.0)
    private let bottomColor = UIColor(red: 144 / 255,
                                    green: 0 / 255,
                                    blue: 187 / 255,
                                    alpha: 1.0)
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addVerticalGradientLayer(
            topColor: topColor,
            centerColor: centerColor,
            bottomColor: bottomColor)
        
        titleLabel.text = titleL
        fotoImageView.image = fotoIV
        nameLabel.text = name
        surnameLabel.text = surname
        genderLabel.text = gender
        ageLabel.text = age
        
    }
    
}
