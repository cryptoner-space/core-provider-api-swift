//
//  Provider_Dto+Transaction.swift
//  
//
//  Created by skibinalexander on 28.08.2023.
//

import Foundation
import BlockchainSdk

public extension Provider_Dto.Transaction {
    struct Fee {}
}

public extension Provider_Dto.Transaction.Fee {
    struct Res: Codable {
        public let fees: [CurrencyAmount]
        
        public init(fees: [CurrencyAmount]) {
            self.fees = fees
        }
    }
}
