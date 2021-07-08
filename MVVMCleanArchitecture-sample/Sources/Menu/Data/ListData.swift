//
//  ListData.swift
//  MVVMCleanArchitecture-sample
//
//  Created by OsakaMiseri on 2021/07/07.
//

import UIKit

enum List {
    case menu1
    case menu2
    case menu3
    case menu4
    case menu5

    // あとでSwiftGen使う
    var localizedString: String {
        switch self {
        case .menu1: return "menu1"
        case .menu2: return "menu2"
        case .menu3: return "menu3"
        case .menu4: return "menu4"
        case .menu5: return "menu5"
        }
    }

}
