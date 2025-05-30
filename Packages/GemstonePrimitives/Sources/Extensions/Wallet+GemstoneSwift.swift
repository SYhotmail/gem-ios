// Copyright (c). Gem Wallet. All rights reserved.

import Foundation
import Primitives

public extension Wallet {
    var chains: [Chain] {
        let walletChains = accounts.map { $0.chain }.asSet()
        return walletChains.intersection(AssetConfiguration.allChains).asArray().sortByRank()
    }

    var chainsWithTokens: [Chain] {
        let walletChains = accounts.map { $0.chain }.asSet()
        return walletChains.intersection(AssetConfiguration.supportedChainsWithTokens).asArray().sortByRank()
    }
}
