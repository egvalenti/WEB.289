//
//  MainViewController.swift
//  Subscription Dock
//
//  Created by Grace Valenti on 3/27/21.
//

import UIKit
import CoreData
import UserNotifications

class MainViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    
    @IBOutlet weak var avgSpentLabel: UILabel!
    @IBOutlet var tableView: UITableView!
    @IBOutlet weak var menuView: UIView!
    @IBOutlet var menuBtn: UIButton!
    @IBOutlet weak var closeMenuBtn: UIButton!
    @IBOutlet var settingsBtn: UIButton!
    @IBOutlet var aboutBtn: UIButton!
    @IBOutlet var leadingConstraint: NSLayoutConstraint!
    @IBOutlet weak var sortBtn: UIButton!
    
    
    
    var subscriptionName: [Subscription] = []
    var sName: String = " "
    public var subscriptions = [Subscription]()
    let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    let ceneter = UNUserNotificationCenter.current()
    var costs: [NSDecimalNumber] = []
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        menuView.layer.shadowOpacity = 1
        menuView.layer.shadowRadius = 5
        tableView.delegate = self
        tableView.dataSource = self
        
        fetchSubscriptions()
        numberOfSubscriptions()
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        self.fetchSubscriptions()
        self.tableView.reloadData()
        print(subscriptionName.count)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        
        self.fetchSubscriptions()
        self.tableView.reloadData()
        numberOfSubscriptions()
    }

    
    
    //MARK: Table View Datasource methods
     func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return subscriptionName.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        let cell = tableView.dequeueReusableCell (withIdentifier: "SubscriptionCell", for: indexPath) as! SubscriptionTableViewCell
        let subscription = subscriptionName[indexPath.row]

        //MARK: Retrieving data and popluating table view cells
        if let data = subscription.icon{
            cell.iconIV.image = UIImage(data: data)
        }
        if cell.iconIV.image == nil{
            cell.iconIV.image = UIImage(named: "defaultIcon")
        }
        cell.nameLabel?.text = subscription.name
        cell.cycleLabel?.text = subscription.cycle
        cell.costLabel?.text = subscription.cost?.description
        costs.append(subscription.cost!)
        print(subscriptionName.count)
        return cell
    }
    
    
    //MARK: This is handling the detailed subscription view controller
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let selectedCell = indexPath.row
        performSegue(withIdentifier: "showSubscriptionDetails", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? SubscriptionViewController {
            destination.subscription = subscriptionName[(tableView.indexPathForSelectedRow?.row)!]
        }
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 75
    }
    
    
    //MARK: deleting cells based on swipe
    
    func tableView(_ tableView: UITableView, leadingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        let delete = UIContextualAction(style: .destructive, title: "Delete") { _,_,_ in
            
            self.context.delete(self.subscriptionName[indexPath.row])
            saveContext()
            self.fetchSubscriptions()
            
            tableView.deleteRows(at: [indexPath], with: .automatic)
            self.numberOfSubscriptions()
        }
        
        let swipe = UISwipeActionsConfiguration(actions: [delete])
        
        return swipe
    }
    
    
    
    
    //MARK: Fetching the subscriptions
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
        self.tableView.reloadData()
        
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
    
    
    
    //MARK: cost math

//    func addCost() {
//        let adding = costs.map{Double(truncating: $0)}.reduce(0, +)
//        let formattedPrice = String(format: "%.2f", adding/12)
//        avgSpentLabel.text = ("Average spent monthly $\(formattedPrice)")
//        print("Testing\(formattedPrice)")
//    }
    
    func numberOfSubscriptions() {
        avgSpentLabel.text =  ("Number of current subscriptions: \(subscriptionName.count.description)")
    }
    
    
}
