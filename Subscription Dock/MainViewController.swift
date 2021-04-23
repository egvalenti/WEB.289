//
//  MainViewController.swift
//  Subscription Dock
//
//  Created by Grace Valenti on 3/27/21.
//

import UIKit
import CoreData

class MainViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    
    @IBOutlet weak var avgSpentLabel: UILabel!
    @IBOutlet var tableView: UITableView!
    @IBOutlet weak var menuView: UIView!
    @IBOutlet var menuBtn: UIButton!
    @IBOutlet weak var closeMenuBtn: UIButton!
    @IBOutlet var settingsBtn: UIButton!
    @IBOutlet var aboutBtn: UIButton!
    @IBOutlet var leadingConstraint: NSLayoutConstraint!
    
    
    var subscriptionName: [Subscription] = []
    var sName: String = " "
    public var subscriptions = [Subscription]()
    let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    
    
    //MARK: Core Stack set up
    //not sure if needed
//    private let persistentContainer = NSPersistentContainer(name: "Subscription")
//    persistentContainer.loadPersistentStores { (NSPersistentStoreDescription, Error) in
//        if let error = Error {
//            print("unable to load persistent sotre")
//            print("\(error), \(error.localizedDescription)")
//        }else {
//
//        }
//    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        menuView.layer.shadowOpacity = 1
        menuView.layer.shadowRadius = 5
        fetchSubscriptions()
        
        
        
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        fetchSubscriptions()
        tableView.reloadData()
    }

    
    
    //MARK: Table View Datasource methods
     func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return subscriptionName.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        let cell = tableView.dequeueReusableCell (withIdentifier: "SubscriptionCell", for: indexPath) as! SubscriptionTableViewCell
        let subscription = subscriptionName[indexPath.row]

        
        var arr = DataBaseHelper.shareInstance.fetchIcon()
        //cell.iconIV.image = UIImage(data: arr[].icon!)
        
        //cell.iconIV.image = UIImage(data: .icon!)
        cell.nameLabel?.text = subscription.name
        cell.cycleLabel?.text = subscription.cycle
        cell.costLabel?.text = subscription.cost
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 75
    }
    
    
    func fetchSubscriptions(){
        let request = NSFetchRequest<Subscription>(entityName: "Subscription")

        do{
           subscriptionName = try context.fetch(request)
        }catch{
            print("Sorry \(error)")
        }
    }

    
    
    

    // MARK: - Unwind segue method
    @IBAction func unwindToMainVC(segue: UIStoryboardSegue){
        
    }

    
    //MARK: - Menu
    
    @IBAction func openMenu(_ sender: Any){
        leadingConstraint.constant = 0
        UIView.animate(withDuration: 0.3, animations:{
            self.view.layoutIfNeeded()
        })
        
    }

    @IBAction func closeMenu(_ sender: Any) {
        leadingConstraint.constant = -340
    }
}
