// Copyright (c). Gem Wallet. All rights reserved.

import SwiftUI
import Components
import Style
import PrimitivesComponents

public struct ConnectionView: View {
    public let model: WalletConnectionViewModel

    public init(model: WalletConnectionViewModel) {
        self.model = model
    }

    public var body: some View {
        HStack {
            AsyncImageView(url: model.imageUrl)
            VStack(alignment: .leading, spacing: 4) {
                Text(model.name)
                    .font(.body)
                    .foregroundColor(.primary)
                    .lineLimit(2)
                if let host = model.host {
                    Text(host)
                        .font(.callout)
                        .foregroundColor(.secondary)
                        .lineLimit(1)
                }
            }
        }
        .contextMenu(model.urlType.map({ [$0] }) ?? [])
    }
}
