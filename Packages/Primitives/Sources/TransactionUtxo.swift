/*
 Generated by typeshare 1.7.0
 */

import Foundation

public struct TransactionInput: Codable {
	public let address: String
	public let value: String

	public init(address: String, value: String) {
		self.address = address
		self.value = value
	}
}
