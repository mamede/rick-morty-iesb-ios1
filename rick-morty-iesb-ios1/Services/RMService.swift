//
//  RMService.swift
//  rick-morty-iesb-ios1
//
//  Created by Felipe Mamede on 16/08/23.
//

import Foundation

final class RMService {
    static let shared = RMService()

    private init() {}

    public func execute<T: Codable>(
        _ request: RMRequest,
        expecting type: T.Type,
        completion: @escaping (Result<T, Error>) -> Void
    ) {

    }
}
