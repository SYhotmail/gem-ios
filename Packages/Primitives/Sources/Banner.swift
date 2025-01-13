/*
 Generated by typeshare 1.12.0
 */

import Foundation

public enum BannerEvent: String, Codable, CaseIterable, Equatable, Sendable {
	case stake
	case accountActivation
	case enableNotifications
	case accountBlockedMultiSignature
	case activateAsset
}

public enum BannerState: String, Codable, CaseIterable, Equatable, Sendable {
	case active
	case cancelled
	case alwaysActive
}

public struct Banner: Codable, Equatable, Sendable {
	public let wallet: Wallet?
	public let asset: Asset?
	public let chain: Chain?
	public let event: BannerEvent
	public let state: BannerState

	public init(wallet: Wallet?, asset: Asset?, chain: Chain?, event: BannerEvent, state: BannerState) {
		self.wallet = wallet
		self.asset = asset
		self.chain = chain
		self.event = event
		self.state = state
	}
}
