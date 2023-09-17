//
//  Provider_Dto+BTC.swift
//  
//
//  Created by skibinalexander on 17.09.2023.
//

import Foundation
import BlockchainSdk

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
