//
//  SubscriptionViewController.swift
//  Subscription Dock
//
//  Created by Grace Valenti on 4/24/21.
//

import UIKit


class SubscriptionViewController: UIViewController {
    
    @IBOutlet weak var icon: UIImageView!
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var cost: UILabel!
    @IBOutlet weak var category: UILabel!
    @IBOutlet weak var billingCycle: UILabel!
    @IBOutlet weak var firstBillDate: UILabel!
    @IBOutlet weak var alert: UILabel!
    @IBOutlet weak var notes: UILabel!
    
    var subscription:Subscription?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let dateData = subscription?.billDate
        let formatter = DateFormatter()
        formatter.dateFormat = "HH:mm E, d MMM y"
        icon.image = UIImage(data: (subscription?.icon)!)
        name.text = subscription?.name
        cost.text = subscription?.cost?.description
        category.text = subscription?.category
        billingCycle.text = subscription?.cycle
        firstBillDate.text = formatter.string(from: dateData!)
        alert.text = subscription?.alert
        notes.text = subscription?.notes
        
    }
    
    
    
    
    
    
    @IBAction func doneBtnPressed(_ sender: Any) {
    }

}
