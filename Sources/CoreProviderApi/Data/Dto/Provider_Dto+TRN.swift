//
//  Provider_Dto+TRN.swift
//  
//
//  Created by skibinalexander on 17.09.2023.
//

import Foundation
import BlockchainSdk

public extension Provider_Dto.Info.Wallet {
    struct TRN {}
}

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
