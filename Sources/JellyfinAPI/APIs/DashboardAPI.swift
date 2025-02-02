//
// DashboardAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import AnyCodable
import Foundation
#if canImport(Combine)
import Combine
#endif

open class DashboardAPI {
    /**
     Gets the configuration pages.
     
     - parameter enableInMainMenu: (query) Whether to enable in the main menu. (optional)
     - parameter pageType: (query) The Jellyfin.Api.Models.ConfigurationPageInfo. (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: AnyPublisher<[ConfigurationPageInfo], Error>
     */
    #if canImport(Combine)
    @available(OSX 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getConfigurationPages(enableInMainMenu: Bool? = nil, pageType: ConfigurationPageType? = nil, apiResponseQueue: DispatchQueue = JellyfinAPI.apiResponseQueue) -> AnyPublisher<[ConfigurationPageInfo], Error> {
        return Future<[ConfigurationPageInfo], Error>.init { promise in
            getConfigurationPagesWithRequestBuilder(enableInMainMenu: enableInMainMenu, pageType: pageType).execute(apiResponseQueue) { result -> Void in
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
     Gets the configuration pages.
     - GET /web/ConfigurationPages
     - parameter enableInMainMenu: (query) Whether to enable in the main menu. (optional)
     - parameter pageType: (query) The Jellyfin.Api.Models.ConfigurationPageInfo. (optional)
     - returns: RequestBuilder<[ConfigurationPageInfo]> 
     */
    open class func getConfigurationPagesWithRequestBuilder(enableInMainMenu: Bool? = nil, pageType: ConfigurationPageType? = nil) -> RequestBuilder<[ConfigurationPageInfo]> {
        let urlPath = "/web/ConfigurationPages"
        let URLString = JellyfinAPI.basePath + urlPath
        let parameters: [String: Any]? = nil

        var urlComponents = URLComponents(string: URLString)
        urlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "enableInMainMenu": enableInMainMenu?.encodeToJSON(),
            "pageType": pageType?.encodeToJSON(),
        ])

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<[ConfigurationPageInfo]>.Type = JellyfinAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**
     Gets a dashboard configuration page.
     
     - parameter name: (query) The name of the page. (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: AnyPublisher<URL, Error>
     */
    #if canImport(Combine)
    @available(OSX 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getDashboardConfigurationPage(name: String? = nil, apiResponseQueue: DispatchQueue = JellyfinAPI.apiResponseQueue) -> AnyPublisher<URL, Error> {
        return Future<URL, Error>.init { promise in
            getDashboardConfigurationPageWithRequestBuilder(name: name).execute(apiResponseQueue) { result -> Void in
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
     Gets a dashboard configuration page.
     - GET /web/ConfigurationPage
     - parameter name: (query) The name of the page. (optional)
     - returns: RequestBuilder<URL> 
     */
    open class func getDashboardConfigurationPageWithRequestBuilder(name: String? = nil) -> RequestBuilder<URL> {
        let urlPath = "/web/ConfigurationPage"
        let URLString = JellyfinAPI.basePath + urlPath
        let parameters: [String: Any]? = nil

        var urlComponents = URLComponents(string: URLString)
        urlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "name": name?.encodeToJSON(),
        ])

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<URL>.Type = JellyfinAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

}
