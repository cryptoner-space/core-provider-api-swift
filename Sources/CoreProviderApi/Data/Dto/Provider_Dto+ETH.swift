//
//  Provider_Dto+ETC.swift
//  
//
//  Created by skibinalexander on 17.09.2023.
//

import Foundation
import BlockchainSdk

public extension Provider_Dto.Info.Wallet {
    struct ETH {}
}

public extension Provider_Dto.Info.Wallet.ETH {
    struct Res: Codable {
        /// Balance of wallet
        public let amounts: [AmountCurrency]
        
        // MARK: - Init
        
        public init(
            amounts: [AmountCurrency]
        ) {
            self.amounts = amounts
        }
    }
}

// MARK: - Fee

public extension Provider_Dto.Transaction.Fee {
    struct ETH {
        public struct Req: Codable {
            public let to: String
            public let from: String
            public let amount: AmountCurrency
            public let data: String?
            
            // MARK: - Init
            
            public init(to: String, from: String, amount: AmountCurrency, data: String?) {
                self.to = to
                self.from = from
                self.amount = amount
                self.data = data
            }
        }
    }
}
