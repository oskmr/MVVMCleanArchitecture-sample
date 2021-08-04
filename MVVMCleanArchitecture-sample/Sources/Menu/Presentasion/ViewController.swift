//
//  ViewController.swift
//  MVVMCleanArchitecture-sample
//
//  Created by OsakaMiseri on 2021/07/05.
//

import UIKit
import RxSwift
import RxCocoa
import RxRelay

final class ViewController: UIViewController {

    @IBOutlet private weak var menuTableView: UITableView! {
        didSet {

        }
    }

    private let viewModel = ViewModel()
    private let disposeBag = DisposeBag()
    // private let adapter = RxTableViewArrayAdaptor()

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)

        hidesBottomBarWhenPushed = true
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    private func setupUI() {
        navigationItem.title = "サンプル"
        navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .done, target: nil, action: nil)
        let closeItem = UIBarButtonItem(barButtonSystemItem: .close, target: self, action: #selector(ViewController.didTapClose))
        navigationItem.setLeftBarButton(closeItem, animated: true)
    }

    private func bindViewModel() {

    }

    @objc private func didTapClose() {
        dismiss(animated: true, completion: nil)
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setToolbarHidden(true, animated: false)
    }

}
