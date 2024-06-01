// Copyright (c). Gem Wallet. All rights reserved.

import Foundation

extension BitcoinChain {
    public var chain: Chain {
        switch self {
        case .bitcoin: return .bitcoin
        case .litecoin: return .litecoin
        case .doge: return .doge
        }
    }
    
    public var defaultFeePriority: Int {
        switch self {
        case .bitcoin: return 5
        case .litecoin: return 1
        case .doge: return 1
        }
    }
    
    public var minimumByteFee: Int {
        switch self {
        case .bitcoin: return 1
        case .litecoin: return 5
        case .doge: return 1_000
        }
    }
}
