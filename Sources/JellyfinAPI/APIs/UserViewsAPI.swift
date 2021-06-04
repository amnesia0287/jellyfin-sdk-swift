//
// UserViewsAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import AnyCodable
import Foundation
#if canImport(Combine)
import Combine
#endif

open class UserViewsAPI {
    /**
     Get user view grouping options.
     
     - parameter userId: (path) User id. 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: AnyPublisher<[SpecialViewOptionDto], Error>
     */
    #if canImport(Combine)
    @available(OSX 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getGroupingOptions(userId: String, apiResponseQueue: DispatchQueue = JellyfinAPI.apiResponseQueue) -> AnyPublisher<[SpecialViewOptionDto], Error> {
        return Future<[SpecialViewOptionDto], Error>.init { promise in
            getGroupingOptionsWithRequestBuilder(userId: userId).execute(apiResponseQueue) { result -> Void in
                switch result {
                case let .success(response):
                    promise(.success(response.body!))
                case let .failure(error):
                    promise(.failure(error))
                }
            }
        }.eraseToAnyPublisher()
    }
    #endif

    /**
     Get user view grouping options.
     - GET /Users/{userId}/GroupingOptions
     - parameter userId: (path) User id. 
     - returns: RequestBuilder<[SpecialViewOptionDto]> 
     */
    open class func getGroupingOptionsWithRequestBuilder(userId: String) -> RequestBuilder<[SpecialViewOptionDto]> {
        var urlPath = "/Users/{userId}/GroupingOptions"
        let userIdPreEscape = "\(APIHelper.mapValueToPathItem(userId))"
        let userIdPostEscape = userIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        urlPath = urlPath.replacingOccurrences(of: "{userId}", with: userIdPostEscape, options: .literal, range: nil)
        let URLString = JellyfinAPI.basePath + urlPath
        let parameters: [String: Any]? = nil

        let urlComponents = URLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<[SpecialViewOptionDto]>.Type = JellyfinAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**
     Get user views.
     
     - parameter userId: (path) User id. 
     - parameter includeExternalContent: (query) Whether or not to include external views such as channels or live tv. (optional)
     - parameter presetViews: (query) Preset views. (optional)
     - parameter includeHidden: (query) Whether or not to include hidden content. (optional, default to false)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: AnyPublisher<BaseItemDtoQueryResult, Error>
     */
    #if canImport(Combine)
    @available(OSX 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getUserViews(userId: String, includeExternalContent: Bool? = nil, presetViews: [String]? = nil, includeHidden: Bool? = nil, apiResponseQueue: DispatchQueue = JellyfinAPI.apiResponseQueue) -> AnyPublisher<BaseItemDtoQueryResult, Error> {
        return Future<BaseItemDtoQueryResult, Error>.init { promise in
            getUserViewsWithRequestBuilder(userId: userId, includeExternalContent: includeExternalContent, presetViews: presetViews, includeHidden: includeHidden).execute(apiResponseQueue) { result -> Void in
                switch result {
                case let .success(response):
                    promise(.success(response.body!))
                case let .failure(error):
                    promise(.failure(error))
                }
            }
        }.eraseToAnyPublisher()
    }
    #endif

    /**
     Get user views.
     - GET /Users/{userId}/Views
     - parameter userId: (path) User id. 
     - parameter includeExternalContent: (query) Whether or not to include external views such as channels or live tv. (optional)
     - parameter presetViews: (query) Preset views. (optional)
     - parameter includeHidden: (query) Whether or not to include hidden content. (optional, default to false)
     - returns: RequestBuilder<BaseItemDtoQueryResult> 
     */
    open class func getUserViewsWithRequestBuilder(userId: String, includeExternalContent: Bool? = nil, presetViews: [String]? = nil, includeHidden: Bool? = nil) -> RequestBuilder<BaseItemDtoQueryResult> {
        var urlPath = "/Users/{userId}/Views"
        let userIdPreEscape = "\(APIHelper.mapValueToPathItem(userId))"
        let userIdPostEscape = userIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        urlPath = urlPath.replacingOccurrences(of: "{userId}", with: userIdPostEscape, options: .literal, range: nil)
        let URLString = JellyfinAPI.basePath + urlPath
        let parameters: [String: Any]? = nil

        var urlComponents = URLComponents(string: URLString)
        urlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "includeExternalContent": includeExternalContent?.encodeToJSON(),
            "presetViews": presetViews?.encodeToJSON(),
            "includeHidden": includeHidden?.encodeToJSON(),
        ])

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<BaseItemDtoQueryResult>.Type = JellyfinAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

}
