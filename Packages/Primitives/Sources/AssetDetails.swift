/*
 Generated by typeshare 1.7.0
 */

import Foundation

public struct AssetLinks: Codable {
	public let homepage: String?
	public let explorer: String?
	public let twitter: String?
	public let telegram: String?
	public let github: String?
	public let youtube: String?
	public let facebook: String?
	public let reddit: String?
	public let coingecko: String?
	public let coinmarketcap: String?
	public let discord: String?

	public init(homepage: String?, explorer: String?, twitter: String?, telegram: String?, github: String?, youtube: String?, facebook: String?, reddit: String?, coingecko: String?, coinmarketcap: String?, discord: String?) {
		self.homepage = homepage
		self.explorer = explorer
		self.twitter = twitter
		self.telegram = telegram
		self.github = github
		self.youtube = youtube
		self.facebook = facebook
		self.reddit = reddit
		self.coingecko = coingecko
		self.coinmarketcap = coinmarketcap
		self.discord = discord
	}
}

public struct AssetDetails: Codable {
	public let links: AssetLinks
	public let isBuyable: Bool
	public let isSellable: Bool
	public let isSwapable: Bool
	public let isStakeable: Bool
	public let stakingApr: Double?

	public init(links: AssetLinks, isBuyable: Bool, isSellable: Bool, isSwapable: Bool, isStakeable: Bool, stakingApr: Double?) {
		self.links = links
		self.isBuyable = isBuyable
		self.isSellable = isSellable
		self.isSwapable = isSwapable
		self.isStakeable = isStakeable
		self.stakingApr = stakingApr
	}
}

public struct AssetFull: Codable {
	public let asset: Asset
	public let details: AssetDetails?
	public let price: Price?
	public let market: AssetMarket?
	public let score: AssetScore

	public init(asset: Asset, details: AssetDetails?, price: Price?, market: AssetMarket?, score: AssetScore) {
		self.asset = asset
		self.details = details
		self.price = price
		self.market = market
		self.score = score
	}
}

public struct AssetDetailsInfo: Codable {
	public let details: AssetDetails
	public let market: AssetMarket

	public init(details: AssetDetails, market: AssetMarket) {
		self.details = details
		self.market = market
	}
}
