//
//  RMGetAllCharactersResponse.swift
//  rick-morty-iesb-ios1
//
//  Created by Felipe Mamede on 21/08/23.
//

import Foundation

struct RMGetAllCharactersResponse: Codable {
    struct Info: Codable {
        let count: Int
        let pages: Int
        let next: String?
        let prev: String?
    }

    let info: Info
    let results: [RMCharacters]
}
