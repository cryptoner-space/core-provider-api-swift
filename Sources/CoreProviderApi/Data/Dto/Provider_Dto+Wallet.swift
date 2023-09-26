//
//  Provider_Dto+Wallet.swift
//  
//
//  Created by skibinalexander on 26.08.2023.
//

import Foundation
import BlockchainSdk

public extension Provider_Dto.Info.Wallet {
    struct Req: Codable {
        public let currency: Currency
        
        public init(currency: Currency) {
            self.currency = currency
        }
    }
    
    struct Res<P: Codable>: Codable {
        public let amounts: [AmountCurrency]
        public let data: P?
        
        public init(amounts: [AmountCurrency], data: P?) {
            self.amounts = amounts
            self.data = data
        }
    }
    
    struct Empty: Codable {}
}
