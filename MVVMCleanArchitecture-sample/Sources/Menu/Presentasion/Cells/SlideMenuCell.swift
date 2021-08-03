//
//  SlideMenuCell.swift
//  MVVMCleanArchitecture-sample
//
//  Created by OsakaMiseri on 2021/07/09.
//

import UIKit
import RxSwift

final class SlideMenuCellModel {

    fileprivate let collectionCellModels: [SlideMenuAppsCollectionViewCellModel]

    init(collectionCellModels: [SlideMenuAppsCollectionViewCellModel]) {
        self.collectionCellModels = collectionCellModels
    }
}

final class SlideMenuCell: UITableViewCell {

    @IBOutlet private weak var titleLabel: UILabel! {
        didSet {

        }
    }

    @IBOutlet private weak var collectionView: UICollectionView! {
        didSet {
            collectionView.dataSource = self
            // collectionView.registerCellNib(SlideMenuAppsCollectionViewCell.self)

            if let flowLayout = collectionView.collectionViewLayout as? UICollectionViewFlowLayout {
                flowLayout.minimumInteritemSpacing = 16
                flowLayout.itemSize = CGSize(width: 56, height: 56)
                collectionView.collectionViewLayout = flowLayout
            }
        }
    }

    private var cellModel: SlideMenuCellModel?
    private var disposeBag = DisposeBag()

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func prepareForReuse() {
        super.prepareForReuse()
        disposeBag = DisposeBag()
    }
    
}

extension SlideMenuCell: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        cellModel?.collectionCellModels.count ?? 0
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
//        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: SlideMenuAppsCollectionViewCell.reuseIdentifier, for: indexPath),
//              let cellModels = cellModel?.collectionCellModels else {
//            return collectionView.makeDummyCell(for: indexPath)
//        }
//        cell.configure(cellModels[indexPath.row], collectionView: collectionView, indexPath: indexPath)
//        return cell
    }

}
