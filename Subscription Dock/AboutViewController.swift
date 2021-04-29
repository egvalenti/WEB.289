//
//  AboutViewController.swift
//  Subscription Dock
//
//  Created by Grace Valenti on 4/20/21.
//

import UIKit

class AboutViewController: UIViewController {
    
    @IBOutlet weak var backBtn: UIButton!
    @IBOutlet weak var iconIV: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        iconIV.image = UIImage(named: "appstore.png")

    }

}
