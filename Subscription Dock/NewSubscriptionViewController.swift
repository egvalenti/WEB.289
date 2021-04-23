//
//  NewSubscriptionViewController.swift
//  Subscription Dock
//
//  Created by Grace Valenti on 3/25/21.
//

import UIKit
import CoreData

class NewSubscriptionViewController: UIViewController {
    
    
    @IBOutlet weak var subName: UITextField!
    @IBOutlet weak var icon: UIImageView!
    @IBOutlet weak var subCost: UITextField!
    @IBOutlet weak var iconPick: UIButton!
    @IBOutlet weak var subCategory: UIButton!
    @IBOutlet weak var subCycle: UIButton!
    @IBOutlet weak var subBillDate: UIDatePicker!
    @IBOutlet weak var subAlert: UIButton!
    @IBOutlet weak var subNotes: UITextField!
    @IBOutlet weak var doneBtn: UIButton!
    
  
    var iconPicker = UIImagePickerController()
    var subscriptions = [Subscription]()
    let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    
    var costs = [Int]()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        subName.delegate = self
        subCost.delegate = self
        iconPicker.delegate = self

    }
    
    
    @IBAction func imgBtnClicked(_ sender: Any) {
        iconPicker.sourceType = .photoLibrary
        iconPicker.allowsEditing = true
        present(iconPicker, animated: true, completion: nil)
    }
    

    
    
    @IBAction func doneBtnPressed(_ sender: Any) {
        
        let model = Subscription(context: context)
        
        if   let imgData = icon.image?.pngData(){
            DataBaseHelper.shareInstance.saveIcon(at: imgData)
        }
        
        if let price = Int(subCost.text!){
            costs.append(price)
        }
        model.name = subName?.text
        model.cost = subCost?.text
        model.category = subCategory?.titleLabel?.text
        model.cycle = subCycle.titleLabel?.text
        model.alert = subAlert.titleLabel?.text
        model.notes = subNotes?.text
        model.billDate = subBillDate.date
        saveContext()
        print(costs)

    
    }
    
    
    @IBAction func unwindToNewSubscriptionVC(segue: UIStoryboardSegue){
        print("unwind to main VC")
    }
     

}//end of class

//MARK: extension for Image picker for icon
extension NewSubscriptionViewController: UIImagePickerControllerDelegate, UINavigationControllerDelegate{
    public func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        
        if let iconPick = info[UIImagePickerController.InfoKey.originalImage] as? UIImage{
            icon.image = iconPick
        }
        
        picker.dismiss(animated: true, completion: nil)
    }
    
    public func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        picker.dismiss(animated: true, completion: nil)
    }
}


extension NewSubscriptionViewController : UITextFieldDelegate {
    public func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}


