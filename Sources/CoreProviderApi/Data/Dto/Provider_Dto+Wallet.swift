//
//  Provider_Dto+Wallet.swift
//  
//
//  Created by skibinalexander on 26.08.2023.
//

import Foundation

public extension Provider_Dto.Info.Wallet {
    struct BTC {}
    struct ETH {}
    struct TON {}
    struct TRN {}
    struct XRP {}
    struct BNB {}
}

// MARK: - BTC

public extension Provider_Dto.Info.Wallet.BTC {
    struct Res: Codable {}
}

// MARK: - ETH

public extension Provider_Dto.Info.Wallet.ETH {
    struct Res: Codable {}
}


// MARK: - TON

public extension Provider_Dto.Info.Wallet.TON {
    struct Res: Codable {
        
        /// Is chain transaction wallet
        public let wallet: Bool
        
        /// Sequence number transations
        public let seqno: Int
        
        /// State of wallet
        public let accountState: AccountState
        
        /// Balance of wallet
        public let amounts: [Provider_Dto.Amount.Res]
        
        // MARK: - Init
        
        public init(
            wallet: Bool,
            seqno: Int,
            accountState: AccountState,
            amounts: [Provider_Dto.Amount.Res]
        ) {
            self.wallet = wallet
            self.seqno = seqno
            self.accountState = accountState
            self.amounts = amounts
        }
    }
}

public extension Provider_Dto.Info.Wallet.TON {
    enum AccountState: String, Codable {
        case active
        case uninitialized
        case none
    }
}

// MARK: - TRN

extension Provider_Dto.Info.Wallet.TRN {
    public struct Res: Codable {}
}

// MARK: - BNB

extension Provider_Dto.Info.Wallet.BNB {
    public struct Res: Codable {}
}

// MARK: - XRP

extension Provider_Dto.Info.Wallet.XRP {
    public struct Res: Codable {}
}
