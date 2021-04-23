//
//  support.swift
//  Subscription Dock
//
//  Created by Grace Valenti on 4/22/21.
//

import Foundation
import CoreData
import UIKit

let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext


func saveContext() {
    
    if context.hasChanges{
        do{
            try context.save()
        }catch{
            print("There was an error saving \(error)")
        }
    }
    
    
}
