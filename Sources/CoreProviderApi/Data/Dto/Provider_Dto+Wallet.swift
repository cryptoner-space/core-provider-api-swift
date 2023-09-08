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

// MARK: - BTC

public extension Provider_Dto.Info.Wallet.BTC {
    struct Res: Codable {
        public let address: String
        public let balance: AmountCurrency
        public let unconfirmedBalance: AmountCurrency
        public let unconfirmedTxs: Int
        public let txs: Int
        
        public init(
            address: String,
            balance: AmountCurrency,
            unconfirmedBalance: AmountCurrency,
            unconfirmedTxs: Int,
            txs: Int
        ) {
            self.address = address
            self.balance = balance
            self.unconfirmedBalance = unconfirmedBalance
            self.unconfirmedTxs = unconfirmedTxs
            self.txs = txs
        }
    }
}

// MARK: - ETH

public extension Provider_Dto.Info.Wallet.ETH {
    struct Res: Codable {
        /// Balance of wallet
        public let amounts: [AmountCurrency]
        
        // MARK: - Init
        
        public init(
            amounts: [AmountCurrency]
        ) {
            self.amounts = amounts
        }
    }
}


// MARK: - TON

public extension Provider_Dto.Info.Wallet.TON {
    struct Req: Codable {
        public let currencies: [Currency]
        
        public init(currencies: [Currency]) {
            self.currencies = currencies
        }
    }
    
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

public extension Provider_Dto.Info.Wallet.TON {
    enum AccountState: String, Codable {
        case active
        case uninitialized
        case none
    }
}

// MARK: - TRN

public extension Provider_Dto.Info.Wallet.TRN {
    struct Res: Codable {
        /// Balance of wallet
        public let amounts: [AmountCurrency]
        
        // MARK: - Init
        
        public init(
            amounts: [AmountCurrency]
        ) {
            self.amounts = amounts
        }
    }
}

// MARK: - BNB

extension Provider_Dto.Info.Wallet.BNB {
    public struct Res: Codable {}
}

// MARK: - XRP

extension Provider_Dto.Info.Wallet.XRP {
    public struct Res: Codable {}
}
