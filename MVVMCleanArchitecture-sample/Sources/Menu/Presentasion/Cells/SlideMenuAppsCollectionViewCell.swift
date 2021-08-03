//
//  SlideMenuAppsCollectionViewCell.swift
//  MVVMCleanArchitecture-sample
//
//  Created by OsakaMiseri on 2021/07/09.
//

import UIKit

final class SlideMenuAppsCollectionViewCellModel {

}

final class SlideMenuAppsCollectionViewCell: UICollectionViewCell {

    @IBOutlet private weak var slideMenuIconImageView: UIImageView! {
        didSet {
            slideMenuIconImageView.layer.cornerRadius = 2
        }
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

}
