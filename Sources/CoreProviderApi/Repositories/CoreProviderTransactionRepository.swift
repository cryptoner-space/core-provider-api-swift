//
//  CoreProviderTranactionRepository.swift
//  
//
//  Created by skibinalexander on 26.08.2023.
//

import Foundation
import BlockchainSdk

public protocol CoreProviderTranactionRepository {
    /// Obtain estimated fee transaction
    func estimatedFee<T: Codable>(
        transaction: T,
        completion: @escaping (Result<[CurrencyAmount], Error>) -> Void
    )
    
    /// Perform send transaction into blockchain
    func sendTransaction<T: Codable, R: Codable>(
        transaction: T,
        completion: @escaping (Result<R, Error>) -> Void
    )
}
