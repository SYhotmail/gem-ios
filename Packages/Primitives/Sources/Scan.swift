/*
 Generated by typeshare 1.7.0
 */

import Foundation

public struct ScanAddress: Codable, Equatable {
	public let name: String?
	public let address: String
	public let isVerified: Bool
	public let isFradulent: Bool
	public let isMemoRequired: Bool

	public init(name: String?, address: String, isVerified: Bool, isFradulent: Bool, isMemoRequired: Bool) {
		self.name = name
		self.address = address
		self.isVerified = isVerified
		self.isFradulent = isFradulent
		self.isMemoRequired = isMemoRequired
	}
}
