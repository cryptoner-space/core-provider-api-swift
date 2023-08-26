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
    func estimatedFee<T: Encodable>(
        transaction: T,
        completion: @escaping (Result<[Provider_Dto.Amount.Res], Error>) -> Void
    )
    
    /// Perform send transaction into blockchain
    func sendTransaction<T: Encodable, R: Decodable>(
        transaction: T,
        completion: @escaping (Result<R, Error>) -> Void
    )
}
