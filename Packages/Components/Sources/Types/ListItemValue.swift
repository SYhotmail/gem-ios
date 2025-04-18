// Copyright (c). Gem Wallet. All rights reserved.

import Foundation
import SwiftUICore

public struct ListItemValue<T: Identifiable> {
    public let title: String?
    public let subtitle: String?
    public let value: T

    public init(title: String? = .none, subtitle: String? = .none, value: T) {
        self.title = title
        self.subtitle = subtitle
        self.value = value
    }
}

extension ListItemValue: Identifiable {
    public var id: T.ID { value.id }
}

// MARK: - 

public struct ListItemValueSection<T: Identifiable> {
    public let section: String
    public let image: Image?
    public let values: [ListItemValue<T>]

    public init(
        section: String,
        image: Image? = .none,
        values: [ListItemValue<T>]
    ) {
        self.section = section
        self.image = image
        self.values = values
    }
}

extension ListItemValueSection: Identifiable {
    public var id: String { section }
}
