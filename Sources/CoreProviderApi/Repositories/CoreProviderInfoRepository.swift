//
//  CoreProviderInfoRepository.swift
//  Cryptoner-iOS
//
//  Created by skibinalexander on 20.08.2023.
//

import Foundation
import BlockchainSdk

public protocol InfoRepository {
    /// Obtain status provider info
    func status(
        completion: @escaping (Result<Void, Error>) -> Void
    )
    
    /// Obtain wallet info by currency
    func wallet<P: Codable>(
        blockchain: Blockchain,
        address: String,
        completion: @escaping (Result<[Provider_Dto.Info.Wallet.Res<P>], Error>) -> Void
    )
}
