/*
 Generated by typeshare 1.7.0
 */

import Foundation

public struct SwapQuoteRequest: Codable {
	public let fromAsset: String
	public let toAsset: String
	public let walletAddress: String
	public let destinationAddress: String?
	public let amount: String
	public let includeData: Bool

	public init(fromAsset: String, toAsset: String, walletAddress: String, destinationAddress: String?, amount: String, includeData: Bool) {
		self.fromAsset = fromAsset
		self.toAsset = toAsset
		self.walletAddress = walletAddress
		self.destinationAddress = destinationAddress
		self.amount = amount
		self.includeData = includeData
	}
}

public struct SwapProvider: Codable, Equatable, Hashable {
	public let name: String

	public init(name: String) {
		self.name = name
	}
}

public struct SwapQuoteData: Codable, Equatable, Hashable {
	public let to: String
	public let value: String
	public let data: String

	public init(to: String, value: String, data: String) {
		self.to = to
		self.value = value
		self.data = data
	}
}

public struct SwapQuote: Codable, Equatable, Hashable {
	public let chainType: ChainType
	public let fromAmount: String
	public let toAmount: String
	public let feePercent: Float
	public let provider: SwapProvider
	public let data: SwapQuoteData?

	public init(chainType: ChainType, fromAmount: String, toAmount: String, feePercent: Float, provider: SwapProvider, data: SwapQuoteData?) {
		self.chainType = chainType
		self.fromAmount = fromAmount
		self.toAmount = toAmount
		self.feePercent = feePercent
		self.provider = provider
		self.data = data
	}
}

public struct SwapQuoteResult: Codable, Equatable {
	public let quote: SwapQuote

	public init(quote: SwapQuote) {
		self.quote = quote
	}
}

public enum SwapMode: String, Codable, Equatable {
	case exactIn = "exactin"
	case exactOut = "exactout"
}
