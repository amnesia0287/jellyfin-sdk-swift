//
// ArtistInfoRemoteSearchQuery.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct ArtistInfoRemoteSearchQuery: Codable, Hashable {

    public var searchInfo: ArtistInfo?
    public var itemId: String?
    /** Will only search within the given provider when set. */
    public var searchProviderName: String?
    /** Gets or sets a value indicating whether disabled providers should be included. */
    public var includeDisabledProviders: Bool?

    public init(searchInfo: ArtistInfo? = nil, itemId: String? = nil, searchProviderName: String? = nil, includeDisabledProviders: Bool? = nil) {
        self.searchInfo = searchInfo
        self.itemId = itemId
        self.searchProviderName = searchProviderName
        self.includeDisabledProviders = includeDisabledProviders
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case searchInfo = "SearchInfo"
        case itemId = "ItemId"
        case searchProviderName = "SearchProviderName"
        case includeDisabledProviders = "IncludeDisabledProviders"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: CodingKeys.self)
        try encoderContainer.encodeIfPresent(searchInfo, forKey: .searchInfo)
        try encoderContainer.encodeIfPresent(itemId, forKey: .itemId)
        try encoderContainer.encodeIfPresent(searchProviderName, forKey: .searchProviderName)
        try encoderContainer.encodeIfPresent(includeDisabledProviders, forKey: .includeDisabledProviders)
    }
}
