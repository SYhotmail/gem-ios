/*
 Generated by typeshare 1.12.0
 */

import Foundation

public struct TonBlock: Codable, Sendable {
	public let seqno: Int32
	public let root_hash: String

	public init(seqno: Int32, root_hash: String) {
		self.seqno = seqno
		self.root_hash = root_hash
	}
}

public struct TonMasterchainInfo: Codable, Sendable {
	public let last: TonBlock

	public init(last: TonBlock) {
		self.last = last
	}
}
