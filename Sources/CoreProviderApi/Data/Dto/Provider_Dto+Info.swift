//
//  Provider_Dto+Info.swift
//  
//
//  Created by skibinalexander on 20.08.2023.
//

import Foundation
import BlockchainSdk

extension Provider_Dto.Info {
    public struct Wallet {}
}

extension Provider_Dto.Info.Wallet {
    public struct Res: Codable {
        public let balance: String
        public let currency: Blockchain.Currency
        
        public init(
            balance: String,
            currency: Blockchain.Currency
        ) {
            self.balance = balance
            self.currency = currency
        }
    }
}
