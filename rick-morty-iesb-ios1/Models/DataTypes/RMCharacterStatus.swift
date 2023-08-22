//
//  RMCharacterStatus.swift
//  rick-morty-iesb-ios1
//
//  Created by Felipe Mamede on 16/08/23.
//

import Foundation

enum RMCharacterStatus: String, Codable {
    case alive = "Alive"
    case dead = "Dead"
    case `unknown` = "unknown"
    
    var text: String {
        switch self {
        case .alive, .dead:
            return rawValue
        case .unknown:
            return "Unknown"
        }
    }
}
