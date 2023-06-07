//
//  WelcomeViewController.swift
//  HW6Modul2
//
//  Created by Максим Шкрябин on 07.06.2023.
//

import UIKit

class WelcomeViewController: UIViewController {

    @IBOutlet var welcomelabel: UILabel!
    
    var userName: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        welcomelabel.text = "Welcome, \(userName ?? "")"

    }
    
}
