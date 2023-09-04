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

// MARK: - TON

public extension Provider_Dto.Transaction.Fee {
    struct TON {
        public struct Req: Codable {
            public let address: String
            public let body: String
            
            public init(address: String, body: String) {
                self.address = address
                self.body = body
            }
        }
    }
}

public extension Provider_Dto.Transaction.Send {
    struct TON {
        public struct Req: Codable {
            public let message: String
            
            public init(message: String) {
                self.message = message
            }
        }
    }
}
