//
//  NewSubscriptionViewController.swift
//  Subscription Dock
//
//  Created by Grace Valenti on 3/25/21.
//

import UIKit
import CoreData
import UserNotifications

class NewSubscriptionViewController: UIViewController, UITextFieldDelegate {
    
    
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
    @IBOutlet weak var nameDisplay: UILabel!
    
    var iconPicker = UIImagePickerController()
    var subscriptions = [Subscription]()
    let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    
    var costs = [NSDecimalNumber]()
    let calendarSet = MainViewController()
    var activeTextField: UITextField?
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        subName.delegate = self
        subCost.delegate = self
        iconPicker.delegate = self
        subNotes.delegate = self
        
        
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillChange), name: UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillChange), name: UIResponder.keyboardWillHideNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillChange), name: UIResponder.keyboardWillChangeFrameNotification, object: nil)
    }
    deinit {
        NotificationCenter.default.removeObserver(self)
    }
    
    
    
    
    
    @IBAction func imgBtnClicked(_ sender: Any) {
        iconPicker.sourceType = .photoLibrary
        iconPicker.allowsEditing = true
        present(iconPicker, animated: true, completion: nil)
    }
    
    

    
    //MARK: saving data
    @IBAction func doneBtnPressed(_ sender: Any) {
        
        let model = Subscription(context: context)
        
        if let imgData = icon.image?.pngData(){
            model.icon = imgData
        }
        var price: NSDecimalNumber?
        if subCost.text != ""{
            price = NSDecimalNumber(string: subCost.text!)
        }else{
            price = 0.00
        }
        
        costs.append(price!)
        model.name = subName?.text
        model.cost = price
        model.category = subCategory?.titleLabel?.text
        model.cycle = subCycle.titleLabel?.text
        model.alert = subAlert.titleLabel?.text
        model.notes = subNotes?.text
        model.billDate = subBillDate.date
        saveContext()
        
        self.performSegue(withIdentifier: "goBackToMain", sender: self)
    }
    
    //MARK: keyboard handling
    @objc func keyboardWillChange(notification: Notification){
        guard let keyboardSize = (notification.userInfo?[UIResponder.keyboardFrameEndUserInfoKey] as? NSValue)?.cgRectValue else{
            return
            
        }
        if activeTextField == subNotes && notification.name == UIResponder.keyboardWillShowNotification || activeTextField == subNotes && notification.name == UIResponder.keyboardWillChangeFrameNotification{
            view.frame.origin.y = -keyboardSize.height
        } else {
            view.frame.origin.y = 0
        }
        
        
        
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        subName.resignFirstResponder()
        subCost.resignFirstResponder()
        subNotes.resignFirstResponder()
        nameDisplay.text = subName.text
        return true
    }
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        if subNotes.isEditing{
            activeTextField = subNotes
        } else if subName.isEditing{
            activeTextField = subName
        } else {
            activeTextField = subCost
        }
    }
    
    
    
    @IBAction func unwindToNewSubscriptionVC(segue: UIStoryboardSegue){

    }
     

}
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


