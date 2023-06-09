//
//  WorkViewController.swift
//  HW6Modul2
//
//  Created by Максим Шкрябин on 09.06.2023.
//

import UIKit

class WorkTwoViewController: UIViewController {

    @IBOutlet var specialityLabel: UILabel!
    @IBOutlet var descriptionLabel: UILabel!
    
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
        
        specialityLabel.text = personValue.jobInformation.last?.title ?? ""
        descriptionLabel.text = personValue.jobInformation.last?.responsibilities ?? ""
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let educationVC = segue.destination as? EducationViewController else { return }
        
        educationVC.personValue = personValue
        
    }
}
