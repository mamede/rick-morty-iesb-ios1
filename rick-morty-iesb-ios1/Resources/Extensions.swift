//
//  Extensions.swift
//  rick-morty-iesb-ios1
//
//  Created by Felipe Mamede on 21/08/23.
//

import UIKit

extension UIView {
    func addSubviews(_ views: UIView...) {
        views.forEach({
            addSubview($0)
        })
    }
}
