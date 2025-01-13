/*
 Generated by typeshare 1.12.0
 */

import Foundation

public struct CosmosDelegationData: Codable, Sendable {
	public let validator_address: String

	public init(validator_address: String) {
		self.validator_address = validator_address
	}
}

public struct CosmosDelegation: Codable, Sendable {
	public let delegation: CosmosDelegationData
	public let balance: CosmosBalance

	public init(delegation: CosmosDelegationData, balance: CosmosBalance) {
		self.delegation = delegation
		self.balance = balance
	}
}

public struct CosmosDelegations: Codable, Sendable {
	public let delegation_responses: [CosmosDelegation]

	public init(delegation_responses: [CosmosDelegation]) {
		self.delegation_responses = delegation_responses
	}
}

public struct CosmosReward: Codable, Sendable {
	public let validator_address: String
	public let reward: [CosmosBalance]

	public init(validator_address: String, reward: [CosmosBalance]) {
		self.validator_address = validator_address
		self.reward = reward
	}
}

public struct CosmosRewards: Codable, Sendable {
	public let rewards: [CosmosReward]

	public init(rewards: [CosmosReward]) {
		self.rewards = rewards
	}
}

public struct CosmosUnboudingDelegationEntry: Codable, Sendable {
	public let completion_time: String
	public let creation_height: String
	public let balance: String

	public init(completion_time: String, creation_height: String, balance: String) {
		self.completion_time = completion_time
		self.creation_height = creation_height
		self.balance = balance
	}
}

public struct CosmosUnboundingDelegation: Codable, Sendable {
	public let validator_address: String
	public let entries: [CosmosUnboudingDelegationEntry]

	public init(validator_address: String, entries: [CosmosUnboudingDelegationEntry]) {
		self.validator_address = validator_address
		self.entries = entries
	}
}

public struct CosmosUnboundingDelegations: Codable, Sendable {
	public let unbonding_responses: [CosmosUnboundingDelegation]

	public init(unbonding_responses: [CosmosUnboundingDelegation]) {
		self.unbonding_responses = unbonding_responses
	}
}

public struct CosmosValidatorMoniker: Codable, Sendable {
	public let moniker: String

	public init(moniker: String) {
		self.moniker = moniker
	}
}

public struct CosmosValidatorCommissionRates: Codable, Sendable {
	public let rate: String

	public init(rate: String) {
		self.rate = rate
	}
}

public struct CosmosValidatorCommission: Codable, Sendable {
	public let commission_rates: CosmosValidatorCommissionRates

	public init(commission_rates: CosmosValidatorCommissionRates) {
		self.commission_rates = commission_rates
	}
}

public struct CosmosValidator: Codable, Sendable {
	public let operator_address: String
	public let jailed: Bool
	public let status: String
	public let description: CosmosValidatorMoniker
	public let commission: CosmosValidatorCommission

	public init(operator_address: String, jailed: Bool, status: String, description: CosmosValidatorMoniker, commission: CosmosValidatorCommission) {
		self.operator_address = operator_address
		self.jailed = jailed
		self.status = status
		self.description = description
		self.commission = commission
	}
}

public struct CosmosValidators: Codable, Sendable {
	public let validators: [CosmosValidator]

	public init(validators: [CosmosValidator]) {
		self.validators = validators
	}
}
