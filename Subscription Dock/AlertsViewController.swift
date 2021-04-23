//
//  AlertsViewController.swift
//  Subscription Dock
//
//  Created by Grace Valenti on 3/27/21.
//

import UIKit

class AlertsViewController: UIViewController {
    
    @IBOutlet weak var noneBtn: UIButton!
    @IBOutlet weak var dayBtn: UIButton!
    @IBOutlet weak var oneDayBtn: UIButton!
    @IBOutlet weak var twoDayBtn: UIButton!
    @IBOutlet weak var twoWeekBtn: UIButton!
    
    @IBOutlet var alertBtns: [UIButton]!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    var selectedAlert: String = ""
    
    @IBAction func alertPressed(_ sender: Any){
        
        guard let button = sender as? UIButton else {
            return
        }
        
        switch button.tag {
        case 0:
            selectedAlert = "None"
            button.titleLabel?.font = UIFont(name: "Helvetica-Bold", size: 30)
            dayBtn.titleLabel?.font = UIFont(name: "Helvetica", size: 15)
            oneDayBtn.titleLabel?.font = UIFont(name: "Helvetica", size: 15)
            twoDayBtn.titleLabel?.font = UIFont(name: "Helvetica", size: 15)
            twoWeekBtn.titleLabel?.font = UIFont(name: "Helvetica", size: 15)
            
        case 1:
            selectedAlert = "Day of 8 AM"
            button.titleLabel?.font = UIFont(name: "Helvetica-Bold", size: 30)
            noneBtn.titleLabel?.font = UIFont(name: "Helvetica", size: 15)
            oneDayBtn.titleLabel?.font = UIFont(name: "Helvetica", size: 15)
            twoDayBtn.titleLabel?.font = UIFont(name: "Helvetica", size: 15)
            twoWeekBtn.titleLabel?.font = UIFont(name: "Helvetica", size: 15)
        case 2:
            selectedAlert = "One day before 8 AM"
            button.titleLabel?.font = UIFont(name: "Helvetica-Bold", size: 30)
            noneBtn.titleLabel?.font = UIFont(name: "Helvetica", size: 15)
            dayBtn.titleLabel?.font = UIFont(name: "Helvetica", size: 15)
            twoDayBtn.titleLabel?.font = UIFont(name: "Helvetica", size: 15)
            twoWeekBtn.titleLabel?.font = UIFont(name: "Helvetica", size: 15)
        case 3:
            selectedAlert = "2 days before 8 Am"
            button.titleLabel?.font = UIFont(name: "Helvetica-Bold", size: 30)
            noneBtn.titleLabel?.font = UIFont(name: "Helvetica", size: 15)
            dayBtn.titleLabel?.font = UIFont(name: "Helvetica", size: 15)
            oneDayBtn.titleLabel?.font = UIFont(name: "Helvetica", size: 15)
            twoWeekBtn.titleLabel?.font = UIFont(name: "Helvetica", size: 15)
        case 4:
            selectedAlert = "One week before 8 AM"
            button.titleLabel?.font = UIFont(name: "Helvetica-Bold", size: 30)
            noneBtn.titleLabel?.font = UIFont(name: "Helvetica", size: 15)
            dayBtn.titleLabel?.font = UIFont(name: "Helvetica", size: 15)
            oneDayBtn.titleLabel?.font = UIFont(name: "Helvetica", size: 15)
            twoDayBtn.titleLabel?.font = UIFont(name: "Helvetica", size: 15)
        default:
            selectedAlert = "None"
            button.titleLabel?.font = UIFont(name: "Helvetica-Bold", size: 30)
            dayBtn.titleLabel?.font = UIFont(name: "Helvetica", size: 15)
            oneDayBtn.titleLabel?.font = UIFont(name: "Helvetica", size: 15)
            twoDayBtn.titleLabel?.font = UIFont(name: "Helvetica", size: 15)
            twoWeekBtn.titleLabel?.font = UIFont(name: "Helvetica", size: 15)
        }
        
        print(selectedAlert)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        var newSubVC = segue.destination as! NewSubscriptionViewController
        newSubVC.subAlert.setTitle("\(selectedAlert)", for: .normal)
    }
    

    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    
    

}
