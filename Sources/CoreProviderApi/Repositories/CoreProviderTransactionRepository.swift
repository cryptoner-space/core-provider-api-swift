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
        blockchain: BlockchainSdk.Blockchain,
        transaction: T,
        completion: @escaping (Result<Provider_Dto.Transaction.Fee.Res, Error>) -> Void
    )
    
    /// Perform send transaction into blockchain
    func sendTransaction<T: Codable>(
        blockchain: BlockchainSdk.Blockchain,
        transaction: T,
        completion: @escaping (Result<Provider_Dto.Transaction.Send.Res, Error>) -> Void
    )
}
