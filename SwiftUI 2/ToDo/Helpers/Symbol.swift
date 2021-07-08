//
//  Symbol.swift
//  ToDo
//
//  Created by Justin Bush on 2021-07-08.
//

import SwiftUI

enum Symbol: String {
    case add = "plus"
    case trash = "trash"
    case todo = "square"
    case done = "checkmark.square"
}

extension Image {
    init?(_ name: Symbol) {
        self.init(systemName: name.rawValue)
    }
}

//extension UIImage {
//    /// Returns a system image on iOS 13, otherwise returns an image from the Bundle provided.
//    convenience init?(nameOrSystemName: String, in bundle: Bundle? = Bundle.main, compatibleWith traitCollection: UITraitCollection? = nil) {
//        if #available(iOS 13, *) {
//            self.init(systemName: nameOrSystemName, compatibleWith: traitCollection)
//        } else {
//            self.init(named: nameOrSystemName, in: bundle, compatibleWith: traitCollection)
//        }
//    }
//}
