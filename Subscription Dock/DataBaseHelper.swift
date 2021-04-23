//
//  DataBaseHelper.swift
//  Subscription Dock
//
//  Created by Grace Valenti on 4/22/21.
//

import UIKit
import CoreData

class DataBaseHelper{
    static let shareInstance = DataBaseHelper()
    let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    
    func saveIcon(at imgData: Data) {
        let iconImg = NSEntityDescription.insertNewObject(forEntityName: "Subscription", into: context) as! Subscription
        iconImg.icon = imgData
        do{
            try context.save()
        }catch{
            print(error.localizedDescription)
        }
    }
    
    
    
    
    func fetchIcon() -> [Subscription] {
        var fetchIcon = [Subscription]()
        let fetchRequest = NSFetchRequest<NSFetchRequestResult>(entityName: "Subscription")
        
        do {
            fetchIcon = try context.fetch(fetchRequest) as! [Subscription]
        } catch {
            print("Error while fetching icon")
        }
        return fetchIcon
    }
}
