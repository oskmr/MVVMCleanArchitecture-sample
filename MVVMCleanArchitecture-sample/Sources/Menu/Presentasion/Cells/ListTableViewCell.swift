//
//  ListTableViewCell.swift
//  MVVMCleanArchitecture-sample
//
//  Created by OsakaMiseri on 2021/07/09.
//

import UIKit

final class ListTableViewCellModel {
    let height: CGFloat = 56
    let list: List

    init(list: List) {
        self.list = list
    }
}

final class ListTableViewCell: UITableViewCell {

    @IBOutlet private weak var listIconImageView: UIImageView!
    @IBOutlet private weak var listTextLabel: UILabel! {
        didSet {
            listTextLabel.font = UIFont.systemFont(ofSize: 14)
            listTextLabel.textColor = UIColor.darkGray
        }
    }
    @IBOutlet private weak var rightArrowIcon: UILabel! {
        didSet {
            rightArrowIcon.font = UIFont.systemFont(ofSize: 16)
            rightArrowIcon.textColor = UIColor.systemGray
        }
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
