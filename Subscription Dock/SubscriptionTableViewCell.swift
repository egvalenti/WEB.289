//
//  SubscriptionTableViewCell.swift
//  Subscription Dock
//
//  Created by Grace Valenti on 4/22/21.
//

import UIKit

class SubscriptionTableViewCell: UITableViewCell {
    
    static let reuseIdentifier = "SubscriptionCell"
    
    @IBOutlet var iconIV: UIImageView!
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var cycleLabel: UILabel!
    @IBOutlet var costLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
