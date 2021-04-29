//
//  SettingsViewController.swift
//  Subscription Dock
//
//  Created by Grace Valenti on 4/20/21.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var nightMode: UISwitch!
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    
    
    @IBAction func swichChanged(_ sender: Any) {
        let alert = UIAlertController(title: "Night mode", message: "This feature is coming in the next update", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Ok", style: .default, handler: nil))
        self.present(alert, animated: true) {
            
        }
    }
    
}
