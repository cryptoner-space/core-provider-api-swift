//
//  Provider_Dto+TON.swift
//  
//
//  Created by skibinalexander on 17.09.2023.
//

import Foundation
import BlockchainSdk

public extension Provider_Dto.Info.Wallet.TON {
    enum AccountState: String, Codable {
        case active
        case uninitialized
        case none
    }
}

// MARK: - Wallet Information

public extension Provider_Dto.Info.Wallet.TON {
    struct Res: Codable {
        /// Is chain transaction wallet
        public let wallet: Bool
        
        /// Sequence number transations
        public let seqno: Int
        
        /// State of wallet
        public let accountState: AccountState
        
        /// Balance of wallet
        public let amounts: [AmountCurrency]
        
        // MARK: - Init
        
        public init(
            wallet: Bool,
            seqno: Int,
            accountState: AccountState,
            amounts: [AmountCurrency]
        ) {
            self.wallet = wallet
            self.seqno = seqno
            self.accountState = accountState
            self.amounts = amounts
        }
    }
}

// MARK: - Fee

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

// MARK: - Transaction

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

