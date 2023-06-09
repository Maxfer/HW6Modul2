//
//  EducationViewController.swift
//  HW6Modul2
//
//  Created by Максим Шкрябин on 09.06.2023.
//

import UIKit

class EducationViewController: UIViewController {
    
    @IBOutlet var specialityLabel: UILabel!
    @IBOutlet var descriptionLabel: UILabel!
    @IBOutlet var institutionLabel: UILabel!
    
    var personValue: Person!
    
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
        
        specialityLabel.text = personValue.education.first?.title ?? ""
        descriptionLabel.text = personValue.education.first?.responsibilities ?? ""
        institutionLabel.text = personValue.education.first?.speciality ?? ""
    }
}
