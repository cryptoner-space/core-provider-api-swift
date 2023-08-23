//
//  Provider_Dto+Info.swift
//  
//
//  Created by skibinalexander on 20.08.2023.
//

import Foundation
import BlockchainSdk

extension Provider_Dto.Info {
    public struct Wallet {}
}

extension Provider_Dto.Info.Wallet {
    public struct Res<P: Codable>: Codable {
        public let balance: String
        public let currency: Blockchain.Currency
        public let payload: P
        
        public init(
            balance: String,
            currency: Blockchain.Currency,
            payload: P
        ) {
            self.balance = balance
            self.currency = currency
            self.payload = payload
        }
    }
}

// MARK: - TON

extension Provider_Dto.Info.Wallet {
    public struct TON: Codable {
        /// Is chain transaction wallet
        public let wallet: Bool
        
        /// Sequence number transations
        public let seqno: Int?
        
        /// State of wallet
        let accountState: AccountState
        
        public init(wallet: Bool, seqno: Int?, accountState: AccountState) {
            self.wallet = wallet
            self.seqno = seqno
            self.accountState = accountState
        }
    }
}

extension Provider_Dto.Info.Wallet.TON {
    public enum AccountState: String, Codable {
        case active
        case uninitialized
    }
}
