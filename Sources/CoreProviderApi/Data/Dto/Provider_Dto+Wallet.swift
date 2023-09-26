//
//  Provider_Dto+Wallet.swift
//  
//
//  Created by skibinalexander on 26.08.2023.
//

import Foundation
import BlockchainSdk

public extension Provider_Dto.Info.Wallet {
    struct Req<P: Codable>: Codable {
        public let inputs: [Currency]
        public let data: P?
        
        public init(inputs: [Currency], data: P? = nil) {
            self.inputs = inputs
            self.data = data
        }
    }
    
    struct Res<P: Codable>: Codable {
        public let amounts: [AmountCurrency]
        public let data: P?
        
        public init(amounts: [AmountCurrency], data: P? = nil) {
            self.amounts = amounts
            self.data = data
        }
    }
    
    struct Empty: Codable {}
}
