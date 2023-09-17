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
    struct Send {}
}

public extension Provider_Dto.Transaction.Fee {
    struct Res: Codable {
        public let fees: [AmountCurrency]
        
        public init(fees: [AmountCurrency]) {
            self.fees = fees
        }
    }
}

public extension Provider_Dto.Transaction.Send {
    struct Res: Codable {
        public let hash: String?
        
        public init(hash: String?) {
            self.hash = hash
        }
    }
}
