/*
 Generated by typeshare 1.12.0
 */

import Foundation

public struct Transaction: Codable, Equatable, Sendable {
	public let id: String
	public let hash: String
	public let assetId: AssetId
	public let from: String
	public let to: String
	public let contract: String?
	public let type: TransactionType
	public let state: TransactionState
	public let blockNumber: String
	public let sequence: String
	public let fee: String
	public let feeAssetId: AssetId
	public let value: String
	public let memo: String?
	public let direction: TransactionDirection
	public let utxoInputs: [TransactionInput]
	public let utxoOutputs: [TransactionInput]
	public let metadata: TransactionMetadata?
	public let createdAt: Date

	public init(id: String, hash: String, assetId: AssetId, from: String, to: String, contract: String?, type: TransactionType, state: TransactionState, blockNumber: String, sequence: String, fee: String, feeAssetId: AssetId, value: String, memo: String?, direction: TransactionDirection, utxoInputs: [TransactionInput], utxoOutputs: [TransactionInput], metadata: TransactionMetadata?, createdAt: Date) {
		self.id = id
		self.hash = hash
		self.assetId = assetId
		self.from = from
		self.to = to
		self.contract = contract
		self.type = type
		self.state = state
		self.blockNumber = blockNumber
		self.sequence = sequence
		self.fee = fee
		self.feeAssetId = feeAssetId
		self.value = value
		self.memo = memo
		self.direction = direction
		self.utxoInputs = utxoInputs
		self.utxoOutputs = utxoOutputs
		self.metadata = metadata
		self.createdAt = createdAt
	}
}

public struct TransactionsFetchOption: Codable, Equatable, Sendable {
	public let wallet_index: Int32
	public let asset_id: String?
	public let from_timestamp: UInt32?

	public init(wallet_index: Int32, asset_id: String?, from_timestamp: UInt32?) {
		self.wallet_index = wallet_index
		self.asset_id = asset_id
		self.from_timestamp = from_timestamp
	}
}
