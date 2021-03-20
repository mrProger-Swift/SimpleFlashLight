//
//  LeftRearCell.swift
//  revealController
//
//  Created by User on 19.03.2021.
//

import UIKit

class LeftRearCell: UITableViewCell {

    @IBOutlet weak var labelCell: UILabel!
    
    static var reusableId = "Cell"
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    func cellConfigure(item: String) {
        labelCell.text = item
        backgroundColor = .clear
        layer.cornerRadius = frame.height / 2
        clipsToBounds = true
    }
}
