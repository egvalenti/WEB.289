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
    @IBOutlet weak var subCycleDate: UIButton!
    @IBOutlet weak var subBillDate: UIDatePicker!
    @IBOutlet weak var subAlert: UIButton!
    @IBOutlet weak var subNotes: UITextField!
    @IBOutlet weak var doneBtn: UIButton!
    
    
    
    
    
    var iconPicker = UIImagePickerController()
    
    //Holds the entities of the subscription
    //cell.textLabel?.text = subscription.value(forKeyPath: "entity") as? String
    var subscriptions: [NSManagedObject] = []
    
    
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
    
    func saveName(name: String){
        guard let appDelegate = UIApplication.shared.delegate as? AppDelegate else {
            return
        }
        
    
        let managedContext = appDelegate.persistentContainer.viewContext
        let image = NSEntityDescription.entity(forEntityName: "Subscription", in: managedContext)!
        let subscription = NSManagedObject(entity: image, insertInto: managedContext)
        subscription.setValue(name, forKeyPath: "name")
        
        do {
            try managedContext.save()
            subscriptions.append(subscription)
        } catch let error as NSError {
            print("Sorry, couldn't save. \(error), \(error.userInfo)")
        }
    }
    
    
    @IBAction func doneBtnPressed(_ sender: Any) {
//        guard let subNameSave = subName.text else{
//            return
//        }
//        self.saveName(name: subNameSave)
        
    
    }
    
    
    @IBAction func unwindToNewSubscriptionVC(segue: UIStoryboardSegue){
        print("unwind to main VC")
    }
     

}//end of class

//extension for Image picker for icon
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


