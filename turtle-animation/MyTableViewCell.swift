//
//  MyTableViewCell.swift
//  turtle-animation
//
//  Created by Taya Penskaya on 27/11/2018.
//  Copyright © 2018 Taya Penskaya. All rights reserved.
//

import UIKit

class MyTableViewCell: UITableViewCell {

    @IBOutlet weak var myImage: UIImageView!
    @IBOutlet weak var tralling: NSLayoutConstraint!
    var delegate: CellDelegate?
    
    override func awakeFromNib() {
        super.awakeFromNib()

        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func animateTurtle() {
//        tralling.constant = 200
//
//        tralling.constant = 100
//        self.layoutIfNeeded()

//        UIView.animate(withDuration: 5) {
            print("animation started")
            self.tralling.constant = 50
            print("animation finished")
            self.layoutIfNeeded()
//        }
        self.delegate?.constraintDidChange()

    }

}


