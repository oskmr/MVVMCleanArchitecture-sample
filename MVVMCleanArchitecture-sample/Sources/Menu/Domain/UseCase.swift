//
//  UseCase.swift
//  MVVMCleanArchitecture-sample
//
//  Created by OsakaMiseri on 2021/07/06.
//

import Foundation
import RxSwift
import RxCocoa
import RxRelay

final class UseCase {

    struct Input {
        let viewDidLoad: Observable<Void>
    }

    struct Output {
        let cellModels: Observable<[Void]>
    }

    struct Dependency {
        let gateway: Gateway
        let translator: Translator
    }
}
