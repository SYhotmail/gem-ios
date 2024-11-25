// Copyright (c). Gem Wallet. All rights reserved.

import Foundation
import Gemstone
import SwiftUI
import Localization
import Style

struct CommunityLink {
    let type: SocialUrl
    let url: URL
}

extension CommunityLink: Comparable {
    static func <(lhs: CommunityLink, rhs: CommunityLink) -> Bool {
        return lhs.type.order > rhs.type.order
    }
}

extension CommunityLink: Identifiable {
    var id: String { type.name }
}

extension SocialUrl {
    var name: String {
        switch self {
        case .x: Localized.Social.x
        case .discord: Localized.Social.discord
        case .telegram: Localized.Social.telegram
        case .gitHub: Localized.Social.github
        case .youTube: Localized.Social.youtube
        case .reddit: Localized.Social.reddit
        case .facebook: Localized.Social.facebook
        case .website: Localized.Social.website
        case .coingecko: Localized.Social.coingecko
        }
    }
    
    var image: Image {
        switch self {
        case .x: Images.Social.x
        case .discord: Images.Social.discord
        case .telegram: Images.Social.telegram
        case .gitHub: Images.Social.github
        case .youTube: Images.Social.youtube
        case .reddit: Images.Social.reddit
        case .facebook: Images.Social.facebook
        case .website: Images.Social.website
        case .coingecko: Images.Social.coingecko
        }
    }
    
    var order: Int {
        socialUrlOrder(url: self).asInt
    }
}

extension CommunityLink {
    var host: String? {
        switch type {
        case .website: cleanHost(host: self.url.host())
        case .x,
            .discord,
            .telegram,
            .gitHub,
            .youTube,
            .reddit,
            .facebook,
            .coingecko: .none
        }
    }
    
    private func cleanHost(host: String?) -> String? {
        guard let host else { return host}
        let values = ["www."]
        for value in values {
            if host.hasPrefix(value) {
                return host.replacingOccurrences(of: value, with: "")
            }
        }
        return host
    }
}
