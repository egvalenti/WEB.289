//
//  CategoriesViewController.swift
//  Subscription Dock
//
//  Created by Grace Valenti on 4/15/21.
//

import UIKit

class CategoriesViewController: UIViewController {
    

    @IBOutlet weak var audiobooksBtn: UIButton!
    @IBOutlet weak var businessBtn: UIButton!
    @IBOutlet weak var childcareBtn: UIButton!
    @IBOutlet weak var fashionBtn: UIButton!
    @IBOutlet weak var educationBtn: UIButton!
    @IBOutlet weak var employmentBtn: UIButton!
    @IBOutlet weak var entertainmentBtn: UIButton!
    @IBOutlet weak var essentialsBtn: UIButton!
    @IBOutlet weak var financeBtn: UIButton!
    @IBOutlet weak var foodDrinkBtn: UIButton!
    @IBOutlet weak var healthBtn: UIButton!
    @IBOutlet weak var internetBtn: UIButton!
    @IBOutlet weak var medicalBtn: UIButton!
    @IBOutlet weak var otherBtn: UIButton!
    @IBOutlet weak var shoppingBtn: UIButton!
    @IBOutlet weak var utilitiesBtn: UIButton!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    
    

    
    var selectedCategory: String = ""
    
    @IBAction func catPressed(_ sender: Any){
        guard let button = sender as? UIButton else {
            return
        }
        
        switch button.tag {
        case 0:
            selectedCategory = "Audiobooks"
            audiobooksBtn.titleLabel?.font = UIFont(name: "Helvetica-Bold", size: 30)
            businessBtn.titleLabel?.font = UIFont(name: "Helvetica", size: 15)
            childcareBtn.titleLabel?.font = UIFont(name: "Helvetica", size: 15)
            fashionBtn.titleLabel?.font = UIFont(name: "Helvetica", size: 15)
            educationBtn.titleLabel?.font = UIFont(name: "Helvetica", size: 15)
            employmentBtn.titleLabel?.font = UIFont(name: "Helvetica", size: 15)
            entertainmentBtn.titleLabel?.font = UIFont(name: "Helvetica", size: 15)
            essentialsBtn.titleLabel?.font = UIFont(name: "Helvetica", size: 15)
            financeBtn.titleLabel?.font = UIFont(name: "Helvetica", size: 15)
            foodDrinkBtn.titleLabel?.font = UIFont(name: "Helvetica", size: 15)
            healthBtn.titleLabel?.font = UIFont(name: "Helvetica", size: 15)
            internetBtn.titleLabel?.font = UIFont(name: "Helvetica", size: 15)
            medicalBtn.titleLabel?.font = UIFont(name: "Helvetica", size: 15)
            otherBtn.titleLabel?.font = UIFont(name: "Helvetica", size: 15)
            shoppingBtn.titleLabel?.font = UIFont(name: "Helvetica", size: 15)
            utilitiesBtn.titleLabel?.font = UIFont(name: "Helvetica", size: 15)
        case 1:
            selectedCategory = "Business"
            audiobooksBtn.titleLabel?.font = UIFont(name: "Helvetica", size: 15)
            businessBtn.titleLabel?.font = UIFont(name: "Helvetica-Bold", size: 30)
            childcareBtn.titleLabel?.font = UIFont(name: "Helvetica", size: 15)
            fashionBtn.titleLabel?.font = UIFont(name: "Helvetica", size: 15)
            educationBtn.titleLabel?.font = UIFont(name: "Helvetica", size: 15)
            employmentBtn.titleLabel?.font = UIFont(name: "Helvetica", size: 15)
            entertainmentBtn.titleLabel?.font = UIFont(name: "Helvetica", size: 15)
            essentialsBtn.titleLabel?.font = UIFont(name: "Helvetica", size: 15)
            financeBtn.titleLabel?.font = UIFont(name: "Helvetica", size: 15)
            foodDrinkBtn.titleLabel?.font = UIFont(name: "Helvetica", size: 15)
            healthBtn.titleLabel?.font = UIFont(name: "Helvetica", size: 15)
            internetBtn.titleLabel?.font = UIFont(name: "Helvetica", size: 15)
            medicalBtn.titleLabel?.font = UIFont(name: "Helvetica", size: 15)
            otherBtn.titleLabel?.font = UIFont(name: "Helvetica", size: 15)
            shoppingBtn.titleLabel?.font = UIFont(name: "Helvetica", size: 15)
            utilitiesBtn.titleLabel?.font = UIFont(name: "Helvetica", size: 15)
        case 2:
            selectedCategory = "Childcare"
            audiobooksBtn.titleLabel?.font = UIFont(name: "Helvetica", size: 15)
            businessBtn.titleLabel?.font = UIFont(name: "Helvetica", size: 15)
            childcareBtn.titleLabel?.font = UIFont(name: "Helvetica-Bold", size: 30)
            fashionBtn.titleLabel?.font = UIFont(name: "Helvetica", size: 15)
            educationBtn.titleLabel?.font = UIFont(name: "Helvetica", size: 15)
            employmentBtn.titleLabel?.font = UIFont(name: "Helvetica", size: 15)
            entertainmentBtn.titleLabel?.font = UIFont(name: "Helvetica", size: 15)
            essentialsBtn.titleLabel?.font = UIFont(name: "Helvetica", size: 15)
            financeBtn.titleLabel?.font = UIFont(name: "Helvetica", size: 15)
            foodDrinkBtn.titleLabel?.font = UIFont(name: "Helvetica", size: 15)
            healthBtn.titleLabel?.font = UIFont(name: "Helvetica", size: 15)
            internetBtn.titleLabel?.font = UIFont(name: "Helvetica", size: 15)
            medicalBtn.titleLabel?.font = UIFont(name: "Helvetica", size: 15)
            otherBtn.titleLabel?.font = UIFont(name: "Helvetica", size: 15)
            shoppingBtn.titleLabel?.font = UIFont(name: "Helvetica", size: 15)
            utilitiesBtn.titleLabel?.font = UIFont(name: "Helvetica", size: 15)
        case 3:
            selectedCategory = "Fashion"
            audiobooksBtn.titleLabel?.font = UIFont(name: "Helvetica", size: 15)
            businessBtn.titleLabel?.font = UIFont(name: "Helvetica", size: 15)
            childcareBtn.titleLabel?.font = UIFont(name: "Helvetica", size: 15)
            fashionBtn.titleLabel?.font = UIFont(name: "Helvetica-Bold", size: 30)
            educationBtn.titleLabel?.font = UIFont(name: "Helvetica", size: 15)
            employmentBtn.titleLabel?.font = UIFont(name: "Helvetica", size: 15)
            entertainmentBtn.titleLabel?.font = UIFont(name: "Helvetica", size: 15)
            essentialsBtn.titleLabel?.font = UIFont(name: "Helvetica", size: 15)
            financeBtn.titleLabel?.font = UIFont(name: "Helvetica", size: 15)
            foodDrinkBtn.titleLabel?.font = UIFont(name: "Helvetica", size: 15)
            healthBtn.titleLabel?.font = UIFont(name: "Helvetica", size: 15)
            internetBtn.titleLabel?.font = UIFont(name: "Helvetica", size: 15)
            medicalBtn.titleLabel?.font = UIFont(name: "Helvetica", size: 15)
            otherBtn.titleLabel?.font = UIFont(name: "Helvetica", size: 15)
            shoppingBtn.titleLabel?.font = UIFont(name: "Helvetica", size: 15)
            utilitiesBtn.titleLabel?.font = UIFont(name: "Helvetica", size: 15)
        case 4:
            selectedCategory = "Education"
            audiobooksBtn.titleLabel?.font = UIFont(name: "Helvetica", size: 15)
            businessBtn.titleLabel?.font = UIFont(name: "Helvetica", size: 15)
            childcareBtn.titleLabel?.font = UIFont(name: "Helvetica", size: 15)
            fashionBtn.titleLabel?.font = UIFont(name: "Helvetica", size: 15)
            educationBtn.titleLabel?.font = UIFont(name: "Helvetica-Bold", size: 30)
            employmentBtn.titleLabel?.font = UIFont(name: "Helvetica", size: 15)
            entertainmentBtn.titleLabel?.font = UIFont(name: "Helvetica", size: 15)
            essentialsBtn.titleLabel?.font = UIFont(name: "Helvetica", size: 15)
            financeBtn.titleLabel?.font = UIFont(name: "Helvetica", size: 15)
            foodDrinkBtn.titleLabel?.font = UIFont(name: "Helvetica", size: 15)
            healthBtn.titleLabel?.font = UIFont(name: "Helvetica", size: 15)
            internetBtn.titleLabel?.font = UIFont(name: "Helvetica", size: 15)
            medicalBtn.titleLabel?.font = UIFont(name: "Helvetica", size: 15)
            otherBtn.titleLabel?.font = UIFont(name: "Helvetica", size: 15)
            shoppingBtn.titleLabel?.font = UIFont(name: "Helvetica", size: 15)
            utilitiesBtn.titleLabel?.font = UIFont(name: "Helvetica", size: 15)
        case 5:
            selectedCategory = "Employment"
            audiobooksBtn.titleLabel?.font = UIFont(name: "Helvetica", size: 15)
            businessBtn.titleLabel?.font = UIFont(name: "Helvetica", size: 15)
            childcareBtn.titleLabel?.font = UIFont(name: "Helvetica", size: 15)
            fashionBtn.titleLabel?.font = UIFont(name: "Helvetica", size: 15)
            educationBtn.titleLabel?.font = UIFont(name: "Helvetica", size: 15)
            employmentBtn.titleLabel?.font = UIFont(name: "Helvetica-Bold", size: 30)
            entertainmentBtn.titleLabel?.font = UIFont(name: "Helvetica", size: 15)
            essentialsBtn.titleLabel?.font = UIFont(name: "Helvetica", size: 15)
            financeBtn.titleLabel?.font = UIFont(name: "Helvetica", size: 15)
            foodDrinkBtn.titleLabel?.font = UIFont(name: "Helvetica", size: 15)
            healthBtn.titleLabel?.font = UIFont(name: "Helvetica", size: 15)
            internetBtn.titleLabel?.font = UIFont(name: "Helvetica", size: 15)
            medicalBtn.titleLabel?.font = UIFont(name: "Helvetica", size: 15)
            otherBtn.titleLabel?.font = UIFont(name: "Helvetica", size: 15)
            shoppingBtn.titleLabel?.font = UIFont(name: "Helvetica", size: 15)
            utilitiesBtn.titleLabel?.font = UIFont(name: "Helvetica", size: 15)
        case 6:
            selectedCategory = "Entertainment"
            audiobooksBtn.titleLabel?.font = UIFont(name: "Helvetica", size: 15)
            businessBtn.titleLabel?.font = UIFont(name: "Helvetica", size: 15)
            childcareBtn.titleLabel?.font = UIFont(name: "Helvetica", size: 15)
            fashionBtn.titleLabel?.font = UIFont(name: "Helvetica", size: 15)
            educationBtn.titleLabel?.font = UIFont(name: "Helvetica", size: 15)
            employmentBtn.titleLabel?.font = UIFont(name: "Helvetica", size: 15)
            entertainmentBtn.titleLabel?.font = UIFont(name: "Helvetica-Bold", size: 30)
            essentialsBtn.titleLabel?.font = UIFont(name: "Helvetica", size: 15)
            financeBtn.titleLabel?.font = UIFont(name: "Helvetica", size: 15)
            foodDrinkBtn.titleLabel?.font = UIFont(name: "Helvetica", size: 15)
            healthBtn.titleLabel?.font = UIFont(name: "Helvetica", size: 15)
            internetBtn.titleLabel?.font = UIFont(name: "Helvetica", size: 15)
            medicalBtn.titleLabel?.font = UIFont(name: "Helvetica", size: 15)
            otherBtn.titleLabel?.font = UIFont(name: "Helvetica", size: 15)
            shoppingBtn.titleLabel?.font = UIFont(name: "Helvetica", size: 15)
            utilitiesBtn.titleLabel?.font = UIFont(name: "Helvetica", size: 15)
        case 7:
            selectedCategory = "Essentials"
            audiobooksBtn.titleLabel?.font = UIFont(name: "Helvetica", size: 15)
            businessBtn.titleLabel?.font = UIFont(name: "Helvetica", size: 15)
            childcareBtn.titleLabel?.font = UIFont(name: "Helvetica", size: 15)
            fashionBtn.titleLabel?.font = UIFont(name: "Helvetica", size: 15)
            educationBtn.titleLabel?.font = UIFont(name: "Helvetica", size: 15)
            employmentBtn.titleLabel?.font = UIFont(name: "Helvetica", size: 15)
            entertainmentBtn.titleLabel?.font = UIFont(name: "Helvetica", size: 15)
            essentialsBtn.titleLabel?.font = UIFont(name: "Helvetica-Bold", size: 30)
            financeBtn.titleLabel?.font = UIFont(name: "Helvetica", size: 15)
            foodDrinkBtn.titleLabel?.font = UIFont(name: "Helvetica", size: 15)
            healthBtn.titleLabel?.font = UIFont(name: "Helvetica", size: 15)
            internetBtn.titleLabel?.font = UIFont(name: "Helvetica", size: 15)
            medicalBtn.titleLabel?.font = UIFont(name: "Helvetica", size: 15)
            otherBtn.titleLabel?.font = UIFont(name: "Helvetica", size: 15)
            shoppingBtn.titleLabel?.font = UIFont(name: "Helvetica", size: 15)
            utilitiesBtn.titleLabel?.font = UIFont(name: "Helvetica", size: 15)
        case 8:
            selectedCategory = "Finance"
            audiobooksBtn.titleLabel?.font = UIFont(name: "Helvetica", size: 15)
            businessBtn.titleLabel?.font = UIFont(name: "Helvetica", size: 15)
            childcareBtn.titleLabel?.font = UIFont(name: "Helvetica", size: 15)
            fashionBtn.titleLabel?.font = UIFont(name: "Helvetica", size: 15)
            educationBtn.titleLabel?.font = UIFont(name: "Helvetica", size: 15)
            employmentBtn.titleLabel?.font = UIFont(name: "Helvetica", size: 15)
            entertainmentBtn.titleLabel?.font = UIFont(name: "Helvetica", size: 15)
            essentialsBtn.titleLabel?.font = UIFont(name: "Helvetica", size: 15)
            financeBtn.titleLabel?.font = UIFont(name: "Helvetica-Bold", size: 30)
            foodDrinkBtn.titleLabel?.font = UIFont(name: "Helvetica", size: 15)
            healthBtn.titleLabel?.font = UIFont(name: "Helvetica", size: 15)
            internetBtn.titleLabel?.font = UIFont(name: "Helvetica", size: 15)
            medicalBtn.titleLabel?.font = UIFont(name: "Helvetica", size: 15)
            otherBtn.titleLabel?.font = UIFont(name: "Helvetica", size: 15)
            shoppingBtn.titleLabel?.font = UIFont(name: "Helvetica", size: 15)
            utilitiesBtn.titleLabel?.font = UIFont(name: "Helvetica", size: 15)
        case 9:
            selectedCategory = "Food/Drink"
            audiobooksBtn.titleLabel?.font = UIFont(name: "Helvetica", size: 15)
            businessBtn.titleLabel?.font = UIFont(name: "Helvetica", size: 15)
            childcareBtn.titleLabel?.font = UIFont(name: "Helvetica", size: 15)
            fashionBtn.titleLabel?.font = UIFont(name: "Helvetica", size: 15)
            educationBtn.titleLabel?.font = UIFont(name: "Helvetica", size: 15)
            employmentBtn.titleLabel?.font = UIFont(name: "Helvetica", size: 15)
            entertainmentBtn.titleLabel?.font = UIFont(name: "Helvetica", size: 15)
            essentialsBtn.titleLabel?.font = UIFont(name: "Helvetica", size: 15)
            financeBtn.titleLabel?.font = UIFont(name: "Helvetica", size: 15)
            foodDrinkBtn.titleLabel?.font = UIFont(name: "Helvetica-Bold", size: 30)
            healthBtn.titleLabel?.font = UIFont(name: "Helvetica", size: 15)
            internetBtn.titleLabel?.font = UIFont(name: "Helvetica", size: 15)
            medicalBtn.titleLabel?.font = UIFont(name: "Helvetica", size: 15)
            otherBtn.titleLabel?.font = UIFont(name: "Helvetica", size: 15)
            shoppingBtn.titleLabel?.font = UIFont(name: "Helvetica", size: 15)
            utilitiesBtn.titleLabel?.font = UIFont(name: "Helvetica", size: 15)
        case 10:
            selectedCategory = "Health"
            audiobooksBtn.titleLabel?.font = UIFont(name: "Helvetica", size: 15)
            businessBtn.titleLabel?.font = UIFont(name: "Helvetica", size: 15)
            childcareBtn.titleLabel?.font = UIFont(name: "Helvetica", size: 15)
            fashionBtn.titleLabel?.font = UIFont(name: "Helvetica", size: 15)
            educationBtn.titleLabel?.font = UIFont(name: "Helvetica", size: 15)
            employmentBtn.titleLabel?.font = UIFont(name: "Helvetica", size: 15)
            entertainmentBtn.titleLabel?.font = UIFont(name: "Helvetica", size: 15)
            essentialsBtn.titleLabel?.font = UIFont(name: "Helvetica", size: 15)
            financeBtn.titleLabel?.font = UIFont(name: "Helvetica", size: 15)
            foodDrinkBtn.titleLabel?.font = UIFont(name: "Helvetica", size: 15)
            healthBtn.titleLabel?.font = UIFont(name: "Helvetica-Bold", size: 30)
            internetBtn.titleLabel?.font = UIFont(name: "Helvetica", size: 15)
            medicalBtn.titleLabel?.font = UIFont(name: "Helvetica", size: 15)
            otherBtn.titleLabel?.font = UIFont(name: "Helvetica", size: 15)
            shoppingBtn.titleLabel?.font = UIFont(name: "Helvetica", size: 15)
            utilitiesBtn.titleLabel?.font = UIFont(name: "Helvetica", size: 15)
        case 11:
            selectedCategory = "Internet"
            audiobooksBtn.titleLabel?.font = UIFont(name: "Helvetica", size: 15)
            businessBtn.titleLabel?.font = UIFont(name: "Helvetica", size: 15)
            childcareBtn.titleLabel?.font = UIFont(name: "Helvetica", size: 15)
            fashionBtn.titleLabel?.font = UIFont(name: "Helvetica", size: 15)
            educationBtn.titleLabel?.font = UIFont(name: "Helvetica", size: 15)
            employmentBtn.titleLabel?.font = UIFont(name: "Helvetica", size: 15)
            entertainmentBtn.titleLabel?.font = UIFont(name: "Helvetica", size: 15)
            essentialsBtn.titleLabel?.font = UIFont(name: "Helvetica", size: 15)
            financeBtn.titleLabel?.font = UIFont(name: "Helvetica", size: 15)
            foodDrinkBtn.titleLabel?.font = UIFont(name: "Helvetica", size: 15)
            healthBtn.titleLabel?.font = UIFont(name: "Helvetica", size: 15)
            internetBtn.titleLabel?.font = UIFont(name: "Helvetica-Bold", size: 30)
            medicalBtn.titleLabel?.font = UIFont(name: "Helvetica", size: 15)
            otherBtn.titleLabel?.font = UIFont(name: "Helvetica", size: 15)
            shoppingBtn.titleLabel?.font = UIFont(name: "Helvetica", size: 15)
            utilitiesBtn.titleLabel?.font = UIFont(name: "Helvetica", size: 15)
        case 12:
            selectedCategory = "Medical"
            audiobooksBtn.titleLabel?.font = UIFont(name: "Helvetica", size: 15)
            businessBtn.titleLabel?.font = UIFont(name: "Helvetica", size: 15)
            childcareBtn.titleLabel?.font = UIFont(name: "Helvetica", size: 15)
            fashionBtn.titleLabel?.font = UIFont(name: "Helvetica", size: 15)
            educationBtn.titleLabel?.font = UIFont(name: "Helvetica", size: 15)
            employmentBtn.titleLabel?.font = UIFont(name: "Helvetica", size: 15)
            entertainmentBtn.titleLabel?.font = UIFont(name: "Helvetica", size: 15)
            essentialsBtn.titleLabel?.font = UIFont(name: "Helvetica", size: 15)
            financeBtn.titleLabel?.font = UIFont(name: "Helvetica", size: 15)
            foodDrinkBtn.titleLabel?.font = UIFont(name: "Helvetica", size: 15)
            healthBtn.titleLabel?.font = UIFont(name: "Helvetica", size: 15)
            internetBtn.titleLabel?.font = UIFont(name: "Helvetica", size: 15)
            medicalBtn.titleLabel?.font = UIFont(name: "Helvetica-Bold", size: 30)
            otherBtn.titleLabel?.font = UIFont(name: "Helvetica", size: 15)
            shoppingBtn.titleLabel?.font = UIFont(name: "Helvetica", size: 15)
            utilitiesBtn.titleLabel?.font = UIFont(name: "Helvetica", size: 15)
        case 13:
            selectedCategory = "Other"
            audiobooksBtn.titleLabel?.font = UIFont(name: "Helvetica", size: 15)
            businessBtn.titleLabel?.font = UIFont(name: "Helvetica", size: 15)
            childcareBtn.titleLabel?.font = UIFont(name: "Helvetica", size: 15)
            fashionBtn.titleLabel?.font = UIFont(name: "Helvetica", size: 15)
            educationBtn.titleLabel?.font = UIFont(name: "Helvetica", size: 15)
            employmentBtn.titleLabel?.font = UIFont(name: "Helvetica", size: 15)
            entertainmentBtn.titleLabel?.font = UIFont(name: "Helvetica", size: 15)
            essentialsBtn.titleLabel?.font = UIFont(name: "Helvetica", size: 15)
            financeBtn.titleLabel?.font = UIFont(name: "Helvetica", size: 15)
            foodDrinkBtn.titleLabel?.font = UIFont(name: "Helvetica", size: 15)
            healthBtn.titleLabel?.font = UIFont(name: "Helvetica", size: 15)
            internetBtn.titleLabel?.font = UIFont(name: "Helvetica", size: 15)
            medicalBtn.titleLabel?.font = UIFont(name: "Helvetica", size: 15)
            otherBtn.titleLabel?.font = UIFont(name: "Helvetica-Bold", size: 30)
            shoppingBtn.titleLabel?.font = UIFont(name: "Helvetica", size: 15)
            utilitiesBtn.titleLabel?.font = UIFont(name: "Helvetica", size: 15)
        case 14:
            selectedCategory = "Shopping"
            audiobooksBtn.titleLabel?.font = UIFont(name: "Helvetica", size: 15)
            businessBtn.titleLabel?.font = UIFont(name: "Helvetica", size: 15)
            childcareBtn.titleLabel?.font = UIFont(name: "Helvetica", size: 15)
            fashionBtn.titleLabel?.font = UIFont(name: "Helvetica", size: 15)
            educationBtn.titleLabel?.font = UIFont(name: "Helvetica", size: 15)
            employmentBtn.titleLabel?.font = UIFont(name: "Helvetica", size: 15)
            entertainmentBtn.titleLabel?.font = UIFont(name: "Helvetica", size: 15)
            essentialsBtn.titleLabel?.font = UIFont(name: "Helvetica", size: 15)
            financeBtn.titleLabel?.font = UIFont(name: "Helvetica", size: 15)
            foodDrinkBtn.titleLabel?.font = UIFont(name: "Helvetica", size: 15)
            healthBtn.titleLabel?.font = UIFont(name: "Helvetica", size: 15)
            internetBtn.titleLabel?.font = UIFont(name: "Helvetica", size: 15)
            medicalBtn.titleLabel?.font = UIFont(name: "Helvetica", size: 15)
            otherBtn.titleLabel?.font = UIFont(name: "Helvetica", size: 15)
            shoppingBtn.titleLabel?.font = UIFont(name: "Helvetica-Bold", size: 30)
            utilitiesBtn.titleLabel?.font = UIFont(name: "Helvetica", size: 15)
        case 15:
            selectedCategory = "Utilities"
            audiobooksBtn.titleLabel?.font = UIFont(name: "Helvetica", size: 15)
            businessBtn.titleLabel?.font = UIFont(name: "Helvetica", size: 15)
            childcareBtn.titleLabel?.font = UIFont(name: "Helvetica", size: 15)
            fashionBtn.titleLabel?.font = UIFont(name:"Helvetica", size: 15)
            educationBtn.titleLabel?.font = UIFont(name: "Helvetica", size: 15)
            employmentBtn.titleLabel?.font = UIFont(name: "Helvetica", size: 15)
            entertainmentBtn.titleLabel?.font = UIFont(name: "Helvetica", size: 15)
            essentialsBtn.titleLabel?.font = UIFont(name: "Helvetica", size: 15)
            financeBtn.titleLabel?.font = UIFont(name: "Helvetica", size: 15)
            foodDrinkBtn.titleLabel?.font = UIFont(name: "Helvetica", size: 15)
            healthBtn.titleLabel?.font = UIFont(name: "Helvetica", size: 15)
            internetBtn.titleLabel?.font = UIFont(name: "Helvetica", size: 15)
            medicalBtn.titleLabel?.font = UIFont(name: "Helvetica", size: 15)
            otherBtn.titleLabel?.font = UIFont(name: "Helvetica", size: 15)
            shoppingBtn.titleLabel?.font = UIFont(name: "Helvetica", size: 15)
            utilitiesBtn.titleLabel?.font = UIFont(name: "Helvetica-Bold", size: 30)
        default:
            selectedCategory = "Other"
            audiobooksBtn.titleLabel?.font = UIFont(name: "Helvetica", size: 15)
            businessBtn.titleLabel?.font = UIFont(name: "Helvetica", size: 15)
            childcareBtn.titleLabel?.font = UIFont(name: "Helvetica", size: 15)
            fashionBtn.titleLabel?.font = UIFont(name: "Helvetica", size: 15)
            educationBtn.titleLabel?.font = UIFont(name: "Helvetica", size: 15)
            employmentBtn.titleLabel?.font = UIFont(name: "Helvetica", size: 15)
            entertainmentBtn.titleLabel?.font = UIFont(name: "Helvetica", size: 15)
            essentialsBtn.titleLabel?.font = UIFont(name: "Helvetica", size: 15)
            financeBtn.titleLabel?.font = UIFont(name: "Helvetica", size: 15)
            foodDrinkBtn.titleLabel?.font = UIFont(name: "Helvetica", size: 15)
            healthBtn.titleLabel?.font = UIFont(name: "Helvetica", size: 15)
            internetBtn.titleLabel?.font = UIFont(name: "Helvetica", size: 15)
            medicalBtn.titleLabel?.font = UIFont(name: "Helvetica", size: 15)
            otherBtn.titleLabel?.font = UIFont(name: "Helvetica-Bold", size: 30)
            shoppingBtn.titleLabel?.font = UIFont(name: "Helvetica", size: 15)
            utilitiesBtn.titleLabel?.font = UIFont(name: "Helvetica", size: 15)
        }
    }
    
    
    
    
    
    @IBAction func doneBtnPressed(_ sender: Any) {
        
        
    }
    
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        var newSubVC = segue.destination as! NewSubscriptionViewController
        newSubVC.subCategory.setTitle("\(selectedCategory)", for: .normal)
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
