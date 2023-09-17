//
//  Provider_Dto+Wallet.swift
//  
//
//  Created by skibinalexander on 26.08.2023.
//

import Foundation
import BlockchainSdk

public extension Provider_Dto.Info.Wallet {
    struct Single {
        public struct Req: Codable {
            public let currency: Currency
            
            public init(currency: Currency) {
                self.currency = currency
            }
        }
        
        public struct Res: Codable {
            public let amount: AmountCurrency
            
            public init(amount: AmountCurrency) {
                self.amount = amount
            }
        }
    }
    
    struct Multi {
        public struct Req: Codable {
            public let currencies: [Currency]
            
            public init(currencies: [Currency]) {
                self.currencies = currencies
            }
        }
        
        public struct Res: Codable {
            public let amounts: [AmountCurrency]
            
            public init(amounts: [AmountCurrency]) {
                self.amounts = amounts
            }
        }
    }
    
    struct BTC {}
    struct ETH {}
    struct TON {}
    struct TRN {}
    struct XRP {}
    struct BNB {}
}
