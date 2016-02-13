//
//  PeripheralTableViewCell.swift
//  Bluefruit Connect
//
//  Created by Antonio García on 29/01/16.
//  Copyright © 2016 Adafruit. All rights reserved.
//

import UIKit

class PeripheralTableViewCell: UITableViewCell {

    @IBOutlet weak var rssiImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var subtitleLabel: UILabel!
    @IBOutlet weak var disconnectButton: UIButton!
    @IBOutlet weak var disconnectButtonWidthConstraint: NSLayoutConstraint!
    
    var onDisconnect : (() -> ())?

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    @IBAction func onClickDisconnect(sender: AnyObject) {
        onDisconnect?()
    }
    
    func showDisconnectButton(show: Bool) {
        disconnectButtonWidthConstraint.constant = show ? 24: 0
    }
}