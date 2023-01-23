//
// TokenBalance.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct TokenBalance: Codable, JSONEncodable, Hashable {

    public var accountIndex: Int
    public var mint: String
    public var owner: String?
    public var uiTokenAmount: TokenAmount

    public init(accountIndex: Int, mint: String, owner: String? = nil, uiTokenAmount: TokenAmount) {
        self.accountIndex = accountIndex
        self.mint = mint
        self.owner = owner
        self.uiTokenAmount = uiTokenAmount
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case accountIndex
        case mint
        case owner
        case uiTokenAmount
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(accountIndex, forKey: .accountIndex)
        try container.encode(mint, forKey: .mint)
        try container.encodeIfPresent(owner, forKey: .owner)
        try container.encode(uiTokenAmount, forKey: .uiTokenAmount)
    }
}

