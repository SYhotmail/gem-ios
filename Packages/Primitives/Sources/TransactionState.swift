/*
 Generated by typeshare 1.7.0
 */

import Foundation

public enum TransactionState: String, Codable, CaseIterable, Equatable {
	case pending
	case confirmed
	case failed
	case reverted
}
