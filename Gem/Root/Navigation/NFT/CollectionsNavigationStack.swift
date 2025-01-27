// Copyright (c). Gem Wallet. All rights reserved.

import Foundation
import SwiftUI
import Primitives
import NFT
import Components

public struct CollectionsNavigationStack: View {
    
    @Environment(\.keystore) private var keystore
    @Environment(\.navigationState) private var navigationState
    @Environment(\.nftService) private var nftService
    @Environment(\.deviceService) private var deviceService
    
    let model: NFTCollectionViewModel
    
    private var navigationPath: Binding<NavigationPath> {
        Binding(
            get: { navigationState.collections },
            set: { navigationState.collections = $0 }
        )
    }
    
    public var body: some View   {
        NavigationStack(path: navigationPath) {
            NFTScene(model: model)
            .navigationDestination(for: Scenes.NFTCollectionScene.self) {
                NFTScene(
                    model: NFTCollectionViewModel(
                        wallet: model.wallet,
                        sceneStep: $0.sceneStep,
                        nftService: nftService,
                        deviceService: deviceService
                    )
                )
            }
            .navigationDestination(for: Scenes.NFTDetails.self) {
                NFTDetailsScene(
                    model: NFTDetailsViewModel(
                        collection: $0.collection,
                        asset: $0.asset,
                        headerButtonAction: onHeaderButtonAction
                    )
                )
            }
        }
        .onChange(of: keystore.currentWallet, onWalletChange)
    }
    
    private func onHeaderButtonAction(type: HeaderButtonType) {
        switch type {
        case .send:
            fatalError()
        case .more:
            fatalError()
        case .buy, .receive, .swap:
            break
        }
    }
}

extension CollectionsNavigationStack {
    private func onWalletChange(_ _: Wallet?, wallet: Wallet?) {
        Task {
            await model.fetch()
        }
    }
}
