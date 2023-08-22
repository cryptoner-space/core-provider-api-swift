//
//  Provider_Dto+Base.swift
//  
//
//  Created by skibinalexander on 20.08.2023.
//

import Foundation
import BlockchainSdk

extension Provider_Dto.Base {
    public struct Req: Codable {
        public let blockchain: Blockchain
        public let currencyType: Blockchain.CurrencyType
        public let currency: String
        public let payload: Data?
        
        public init(
            blockchain: Blockchain,
            currencyType: Blockchain.CurrencyType,
            currency: String,
            payload: Data?
        ) {
            self.blockchain = blockchain
            self.currencyType = currencyType
            self.currency = currency
            self.payload = payload
        }
        
        func parse<T: Codable>() throws -> Output<T> {
            let currency = Blockchain.Currency(
                blockchain: blockchain,
                type: currencyType,
                rawValue: currency
            )
            
            if let payload = payload {
                let decode = try JSONDecoder().decode(T.self, from: payload)
                return Output(currency: currency, payload: decode)
            } else {
                return Output(currency: currency, payload: Empty() as! T)
            }
        }
        
        public struct Empty: Codable {
            public init() {}
        }
        
        public struct Output<T: Codable>: Codable {
            public let currency: Blockchain.Currency
            public let payload: T
            
            public init(currency: Blockchain.Currency, payload: T) {
                self.currency = currency
                self.payload = payload
            }
        }
    }
}
