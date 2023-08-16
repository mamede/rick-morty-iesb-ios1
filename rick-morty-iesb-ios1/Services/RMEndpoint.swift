//
//  RMEndpoint.swift
//  rick-morty-iesb-ios1
//
//  Created by Felipe Mamede on 16/08/23.
//

import Foundation

@frozen enum RMEndpoint: String, CaseIterable, Hashable {
    case character
    case location
    case episode
}
