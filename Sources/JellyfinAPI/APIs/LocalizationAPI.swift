//
// LocalizationAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import AnyCodable
import Foundation
#if canImport(Combine)
import Combine
#endif

open class LocalizationAPI {
    /**
     Gets known countries.
     
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: AnyPublisher<[CountryInfo], Error>
     */
    #if canImport(Combine)
    @available(OSX 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getCountries(apiResponseQueue: DispatchQueue = JellyfinAPI.apiResponseQueue) -> AnyPublisher<[CountryInfo], Error> {
        return Future<[CountryInfo], Error>.init { promise in
            getCountriesWithRequestBuilder().execute(apiResponseQueue) { result -> Void in
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
     Gets known countries.
     - GET /Localization/Countries
     - API Key:
       - type: apiKey X-Emby-Authorization 
       - name: CustomAuthentication
     - returns: RequestBuilder<[CountryInfo]> 
     */
    open class func getCountriesWithRequestBuilder() -> RequestBuilder<[CountryInfo]> {
        let urlPath = "/Localization/Countries"
        let URLString = JellyfinAPI.basePath + urlPath
        let parameters: [String: Any]? = nil

        let urlComponents = URLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<[CountryInfo]>.Type = JellyfinAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**
     Gets known cultures.
     
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: AnyPublisher<[CultureDto], Error>
     */
    #if canImport(Combine)
    @available(OSX 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getCultures(apiResponseQueue: DispatchQueue = JellyfinAPI.apiResponseQueue) -> AnyPublisher<[CultureDto], Error> {
        return Future<[CultureDto], Error>.init { promise in
            getCulturesWithRequestBuilder().execute(apiResponseQueue) { result -> Void in
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
     Gets known cultures.
     - GET /Localization/Cultures
     - API Key:
       - type: apiKey X-Emby-Authorization 
       - name: CustomAuthentication
     - returns: RequestBuilder<[CultureDto]> 
     */
    open class func getCulturesWithRequestBuilder() -> RequestBuilder<[CultureDto]> {
        let urlPath = "/Localization/Cultures"
        let URLString = JellyfinAPI.basePath + urlPath
        let parameters: [String: Any]? = nil

        let urlComponents = URLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<[CultureDto]>.Type = JellyfinAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**
     Gets localization options.
     
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: AnyPublisher<[LocalizationOption], Error>
     */
    #if canImport(Combine)
    @available(OSX 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getLocalizationOptions(apiResponseQueue: DispatchQueue = JellyfinAPI.apiResponseQueue) -> AnyPublisher<[LocalizationOption], Error> {
        return Future<[LocalizationOption], Error>.init { promise in
            getLocalizationOptionsWithRequestBuilder().execute(apiResponseQueue) { result -> Void in
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
     Gets localization options.
     - GET /Localization/Options
     - API Key:
       - type: apiKey X-Emby-Authorization 
       - name: CustomAuthentication
     - returns: RequestBuilder<[LocalizationOption]> 
     */
    open class func getLocalizationOptionsWithRequestBuilder() -> RequestBuilder<[LocalizationOption]> {
        let urlPath = "/Localization/Options"
        let URLString = JellyfinAPI.basePath + urlPath
        let parameters: [String: Any]? = nil

        let urlComponents = URLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<[LocalizationOption]>.Type = JellyfinAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**
     Gets known parental ratings.
     
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: AnyPublisher<[ParentalRating], Error>
     */
    #if canImport(Combine)
    @available(OSX 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getParentalRatings(apiResponseQueue: DispatchQueue = JellyfinAPI.apiResponseQueue) -> AnyPublisher<[ParentalRating], Error> {
        return Future<[ParentalRating], Error>.init { promise in
            getParentalRatingsWithRequestBuilder().execute(apiResponseQueue) { result -> Void in
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
     Gets known parental ratings.
     - GET /Localization/ParentalRatings
     - API Key:
       - type: apiKey X-Emby-Authorization 
       - name: CustomAuthentication
     - returns: RequestBuilder<[ParentalRating]> 
     */
    open class func getParentalRatingsWithRequestBuilder() -> RequestBuilder<[ParentalRating]> {
        let urlPath = "/Localization/ParentalRatings"
        let URLString = JellyfinAPI.basePath + urlPath
        let parameters: [String: Any]? = nil

        let urlComponents = URLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<[ParentalRating]>.Type = JellyfinAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

}
