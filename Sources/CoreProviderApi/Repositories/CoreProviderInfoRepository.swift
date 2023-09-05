//
//  CoreProviderInfoRepository.swift
//  Cryptoner-iOS
//
//  Created by skibinalexander on 20.08.2023.
//

import Foundation
import BlockchainSdk

public protocol CoreProviderInfoRepository {
    /// Obtain wallet info by currency
    func wallet<D: Codable, R: Codable>(
        blockchain: Blockchain,
        address: String,
        data: D,
        completion: @escaping (Result<R, Error>) -> Void
    )
}
