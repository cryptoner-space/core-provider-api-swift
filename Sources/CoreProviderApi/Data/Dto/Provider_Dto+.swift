//
//  Provider_Dto+.swift
//  
//
//  Created by skibinalexander on 13.08.2023.
//

import Foundation
import BlockchainSdk

public struct Provider_Dto {
    public struct Amount {}
    public struct Info {}
}

extension Provider_Dto.Info {
    public struct Wallet {}
}

extension Provider_Dto.Amount {
    public struct Res: Codable {
        public let blockchain: Blockchain
        public let currencyType: Blockchain.CurrencyType
        public let currency: String
        public let amount: String
        
        public init(
            blockchain: Blockchain,
            currencyType: Blockchain.CurrencyType,
            currency: String,
            amount: String
        ) {
            self.blockchain = blockchain
            self.currencyType = currencyType
            self.currency = currency
            self.amount = amount
        }
    }
}
