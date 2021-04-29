//
//  BillingCycleViewController.swift
//  Subscription Dock
//
//  Created by Grace Valenti on 4/13/21.
//

import UIKit

class BillingCycleViewController: UIViewController {
    
    @IBOutlet weak var freeTrialBtn: UIButton!
    @IBOutlet weak var monthlyBtn: UIButton!
    @IBOutlet weak var quarterlyBtn: UIButton!
    @IBOutlet weak var annuallyBtn: UIButton!
    @IBOutlet var billCycleBtns: [UIButton]!
    
    var selectedCycle: String = ""

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    
    @IBAction func billingCyclePressed (_ sender: Any){
        guard let button = sender as? UIButton else {
            return
        }
        
        switch button.tag {
        case 0:
            selectedCycle = "Free trial"
            button.titleLabel?.font = UIFont(name: "Helvetica-Bold", size: 30)
            monthlyBtn.titleLabel?.font = UIFont(name: "Helvetica", size: 15)
            quarterlyBtn.titleLabel?.font = UIFont(name: "Helvetica", size: 15)
            annuallyBtn.titleLabel?.font = UIFont(name: "Helvetica", size: 15)
        case 1:
            selectedCycle = "Monthly"
            button.titleLabel?.font = UIFont(name: "Helvetica-Bold", size: 30)
            freeTrialBtn.titleLabel?.font = UIFont(name: "Helvetica", size: 15)
            quarterlyBtn.titleLabel?.font = UIFont(name: "Helvetica", size: 15)
            annuallyBtn.titleLabel?.font = UIFont(name: "Helvetica", size: 15)
        case 2:
            selectedCycle = "Quarterly"
            button.titleLabel?.font = UIFont(name: "Helvetica-Bold", size: 30)
            freeTrialBtn.titleLabel?.font = UIFont(name: "Helvetica", size: 15)
            monthlyBtn.titleLabel?.font = UIFont(name: "Helvetica", size: 15)
            annuallyBtn.titleLabel?.font = UIFont(name: "Helvetica", size: 15)
        case 3:
            selectedCycle = "Annually"
            button.titleLabel?.font = UIFont(name: "Helvetica-Bold", size: 30)
            freeTrialBtn.titleLabel?.font = UIFont(name: "Helvetica", size: 15)
            monthlyBtn.titleLabel?.font = UIFont(name: "Helvetica", size: 15)
            quarterlyBtn.titleLabel?.font = UIFont(name: "Helvetica", size: 15)
            
        default:
            selectedCycle = "Free trial"
            button.titleLabel?.font = UIFont(name: "Helvetica-Bold", size: 30)
            monthlyBtn.titleLabel?.font = UIFont(name: "Helvetica", size: 15)
            quarterlyBtn.titleLabel?.font = UIFont(name: "Helvetica", size: 15)
            annuallyBtn.titleLabel?.font = UIFont(name: "Helvetica", size: 15)
        }
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        var newSubVC = segue.destination as! NewSubscriptionViewController
        newSubVC.subCycle.setTitle("\(selectedCycle)", for: .normal)
    }
    

}
