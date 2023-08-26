//
//  CoreProviderInfoRepository.swift
//  Cryptoner-iOS
//
//  Created by skibinalexander on 20.08.2023.
//

import Foundation
import BlockchainSdk

public protocol CoreProviderInfoRepository {
    /// Obtain status provider info
    func status(
        completion: @escaping (Result<Void, Error>) -> Void
    )
    
    /// Obtain wallet info by currency
    func wallet<R: Codable>(
        blockchain: Blockchain,
        address: String,
        completion: @escaping (Result<R, Error>) -> Void
    )
}
