//
//  CostCategoryViewController.swift
//  Subscription Dock
//
//  Created by Grace Valenti on 4/25/21.
//

import Foundation
import UIKit
import CoreData

class CostCategoryViewController: UIViewController {
    

    @IBOutlet weak var audioBooksLabel: UILabel!
    @IBOutlet weak var businessLabel: UILabel!
    @IBOutlet weak var childcareLabel: UILabel!
    @IBOutlet weak var fashionLabel: UILabel!
    @IBOutlet weak var educationLabel: UILabel!
    @IBOutlet weak var employmentLabel: UILabel!
    @IBOutlet weak var entertainmentLabel: UILabel!
    @IBOutlet weak var essentialsLabel: UILabel!
    @IBOutlet weak var financeLabel: UILabel!
    @IBOutlet weak var foodDrinkLabel: UILabel!
    @IBOutlet weak var healthLabel: UILabel!
    @IBOutlet weak var internetLabel: UILabel!
    @IBOutlet weak var medicalLabel: UILabel!
    @IBOutlet weak var otherLabel: UILabel!
    @IBOutlet weak var shoppingLabel: UILabel!
    @IBOutlet weak var utilitiesLabel: UILabel!
    
    
    //I hope to be able to update app with this function soon
    
    var subscriptions = [Subscription]()
    let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    var audiobookArray = [NSDecimalNumber]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    
    
    
}
