/*
 Generated by typeshare 1.13.2
 */

import Foundation

public struct TransactionExtended: Codable, Sendable {
	public let transaction: Transaction
	public let asset: Asset
	public let feeAsset: Asset
	public let price: Price?
	public let feePrice: Price?
	public let assets: [Asset]
	public let prices: [AssetPrice]

	public init(transaction: Transaction, asset: Asset, feeAsset: Asset, price: Price?, feePrice: Price?, assets: [Asset], prices: [AssetPrice]) {
		self.transaction = transaction
		self.asset = asset
		self.feeAsset = feeAsset
		self.price = price
		self.feePrice = feePrice
		self.assets = assets
		self.prices = prices
	}
}
