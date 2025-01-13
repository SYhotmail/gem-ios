/*
 Generated by typeshare 1.12.0
 */

import Foundation

public struct AssetProperties: Codable, Sendable {
	public let isEnabled: Bool
	public let isBuyable: Bool
	public let isSellable: Bool
	public let isSwapable: Bool
	public let isStakeable: Bool
	public let stakingApr: Double?

	public init(isEnabled: Bool, isBuyable: Bool, isSellable: Bool, isSwapable: Bool, isStakeable: Bool, stakingApr: Double?) {
		self.isEnabled = isEnabled
		self.isBuyable = isBuyable
		self.isSellable = isSellable
		self.isSwapable = isSwapable
		self.isStakeable = isStakeable
		self.stakingApr = stakingApr
	}
}

public struct AssetBasic: Codable, Sendable {
	public let asset: Asset
	public let properties: AssetProperties
	public let score: AssetScore

	public init(asset: Asset, properties: AssetProperties, score: AssetScore) {
		self.asset = asset
		self.properties = properties
		self.score = score
	}
}

public struct AssetLink: Codable, Sendable {
	public let name: String
	public let url: String

	public init(name: String, url: String) {
		self.name = name
		self.url = url
	}
}

public struct AssetFull: Codable, Sendable {
	public let asset: Asset
	public let links: [AssetLink]
	public let properties: AssetProperties
	public let score: AssetScore

	public init(asset: Asset, links: [AssetLink], properties: AssetProperties, score: AssetScore) {
		self.asset = asset
		self.links = links
		self.properties = properties
		self.score = score
	}
}

public struct AssetMarketPrice: Codable, Sendable {
	public let price: Price?
	public let market: AssetMarket?

	public init(price: Price?, market: AssetMarket?) {
		self.price = price
		self.market = market
	}
}
