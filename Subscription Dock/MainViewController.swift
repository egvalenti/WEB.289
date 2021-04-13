//
//  MainViewController.swift
//  Subscription Dock
//
//  Created by Grace Valenti on 3/27/21.
//

import UIKit
import CoreData

class MainViewController: UIViewController {
    var subscriptionName: [NSManagedObject] = []
    var sName: String = " "
    

    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
            
        guard let appDelegate = UIApplication.shared.delegate as? AppDelegate else{
            return
        }
            
        let managedContext = appDelegate.persistentContainer.viewContext
            
        let fetchRequest = NSFetchRequest<NSManagedObject>(entityName: "Subscription")
            
        do{
            subscriptionName = try managedContext.fetch(fetchRequest)
            sName = (subscriptionName[0].value(forKey: "name") as? String)!
        } catch let error as NSError{
            print("sorry")
        }
        
        print("this is it \(sName)")
    }
    

    
    @IBAction func unwindToMainVC(segue: UIStoryboardSegue){
        
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
