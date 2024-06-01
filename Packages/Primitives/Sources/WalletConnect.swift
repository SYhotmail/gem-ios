/*
 Generated by typeshare 1.7.0
 */

import Foundation

public struct WCEthereumTransaction: Codable, Equatable, Hashable {
	public let chainId: String?
	public let from: String
	public let to: String
	public let value: String?
	public let gas: String?
	public let gasLimit: String?
	public let gasPrice: String?
	public let maxFeePerGas: String?
	public let maxPriorityFeePerGas: String?
	public let nonce: String?
	public let data: String?

	public init(chainId: String?, from: String, to: String, value: String?, gas: String?, gasLimit: String?, gasPrice: String?, maxFeePerGas: String?, maxPriorityFeePerGas: String?, nonce: String?, data: String?) {
		self.chainId = chainId
		self.from = from
		self.to = to
		self.value = value
		self.gas = gas
		self.gasLimit = gasLimit
		self.gasPrice = gasPrice
		self.maxFeePerGas = maxFeePerGas
		self.maxPriorityFeePerGas = maxPriorityFeePerGas
		self.nonce = nonce
		self.data = data
	}
}

public struct WCSolanaTransaction: Codable, Equatable, Hashable {
	public let transaction: String

	public init(transaction: String) {
		self.transaction = transaction
	}
}

public struct WCSolanaSignMessage: Codable, Equatable, Hashable {
	public let message: String
	public let pubkey: String

	public init(message: String, pubkey: String) {
		self.message = message
		self.pubkey = pubkey
	}
}

public struct WCSolanaSignMessageResult: Codable, Equatable, Hashable {
	public let signature: String

	public init(signature: String) {
		self.signature = signature
	}
}

public enum WallletConnectCAIP2: String, Codable {
	case eip155
	case solana
	case cosmos
}
