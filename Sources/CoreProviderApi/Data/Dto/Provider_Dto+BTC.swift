//
//  Provider_Dto+BTC.swift
//  
//
//  Created by skibinalexander on 17.09.2023.
//

import Foundation
import BlockchainSdk

public extension Provider_Dto.Info.Wallet {
    struct BTC {}
}

public extension Provider_Dto.Info.Wallet.BTC {
    struct Res: Codable {
        public let address: String
        public let unconfirmedBalance: AmountCurrency
        public let unconfirmedTxs: Int
        public let txs: Int
        
        public init(
            address: String,
            unconfirmedBalance: AmountCurrency,
            unconfirmedTxs: Int,
            txs: Int
        ) {
            self.address = address
            self.unconfirmedBalance = unconfirmedBalance
            self.unconfirmedTxs = unconfirmedTxs
            self.txs = txs
        }
    }
}
