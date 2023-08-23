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
        public let items: [Provider_Dto.Info.Wallet.Item]
        public let payload: P
        
        public init(
            items: [Provider_Dto.Info.Wallet.Item],
            payload: P
        ) {
            self.items = items
            self.payload = payload
        }
    }
    
    public struct Item: Codable {
        public let balance: String
        public let currency: Blockchain.Currency
        
        public init(balance: String, currency: Blockchain.Currency) {
            self.balance = balance
            self.currency = currency
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
        
        // MARK: - Init
        
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
        case none
    }
}
