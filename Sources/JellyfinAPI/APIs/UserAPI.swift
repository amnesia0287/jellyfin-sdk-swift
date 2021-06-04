//
// UserAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import AnyCodable
import Foundation
#if canImport(Combine)
import Combine
#endif

open class UserAPI {
    /**
     Authenticates a user.
     
     - parameter userId: (path) The user id. 
     - parameter pw: (query) The password as plain text. 
     - parameter password: (query) The password sha1-hash. (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: AnyPublisher<AuthenticationResult, Error>
     */
    #if canImport(Combine)
    @available(OSX 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func authenticateUser(userId: String, pw: String, password: String? = nil, apiResponseQueue: DispatchQueue = JellyfinAPI.apiResponseQueue) -> AnyPublisher<AuthenticationResult, Error> {
        return Future<AuthenticationResult, Error>.init { promise in
            authenticateUserWithRequestBuilder(userId: userId, pw: pw, password: password).execute(apiResponseQueue) { result -> Void in
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
     Authenticates a user.
     - POST /Users/{userId}/Authenticate
     - parameter userId: (path) The user id. 
     - parameter pw: (query) The password as plain text. 
     - parameter password: (query) The password sha1-hash. (optional)
     - returns: RequestBuilder<AuthenticationResult> 
     */
    open class func authenticateUserWithRequestBuilder(userId: String, pw: String, password: String? = nil) -> RequestBuilder<AuthenticationResult> {
        var urlPath = "/Users/{userId}/Authenticate"
        let userIdPreEscape = "\(APIHelper.mapValueToPathItem(userId))"
        let userIdPostEscape = userIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        urlPath = urlPath.replacingOccurrences(of: "{userId}", with: userIdPostEscape, options: .literal, range: nil)
        let URLString = JellyfinAPI.basePath + urlPath
        let parameters: [String: Any]? = nil

        var urlComponents = URLComponents(string: URLString)
        urlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "pw": pw.encodeToJSON(),
            "password": password?.encodeToJSON(),
        ])

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<AuthenticationResult>.Type = JellyfinAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**
     Authenticates a user by name.
     
     - parameter authenticateUserByName: (body) The M:Jellyfin.Api.Controllers.UserController.AuthenticateUserByName(Jellyfin.Api.Models.UserDtos.AuthenticateUserByName) request. 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: AnyPublisher<AuthenticationResult, Error>
     */
    #if canImport(Combine)
    @available(OSX 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func authenticateUserByName(authenticateUserByName: AuthenticateUserByName, apiResponseQueue: DispatchQueue = JellyfinAPI.apiResponseQueue) -> AnyPublisher<AuthenticationResult, Error> {
        return Future<AuthenticationResult, Error>.init { promise in
            authenticateUserByNameWithRequestBuilder(authenticateUserByName: authenticateUserByName).execute(apiResponseQueue) { result -> Void in
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
     Authenticates a user by name.
     - POST /Users/AuthenticateByName
     - parameter authenticateUserByName: (body) The M:Jellyfin.Api.Controllers.UserController.AuthenticateUserByName(Jellyfin.Api.Models.UserDtos.AuthenticateUserByName) request. 
     - returns: RequestBuilder<AuthenticationResult> 
     */
    open class func authenticateUserByNameWithRequestBuilder(authenticateUserByName: AuthenticateUserByName) -> RequestBuilder<AuthenticationResult> {
        let urlPath = "/Users/AuthenticateByName"
        let URLString = JellyfinAPI.basePath + urlPath
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: authenticateUserByName)

        let urlComponents = URLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<AuthenticationResult>.Type = JellyfinAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**
     Authenticates a user with quick connect.
     
     - parameter quickConnectDto: (body) The Jellyfin.Api.Models.UserDtos.QuickConnectDto request. 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: AnyPublisher<AuthenticationResult, Error>
     */
    #if canImport(Combine)
    @available(OSX 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func authenticateWithQuickConnect(quickConnectDto: QuickConnectDto, apiResponseQueue: DispatchQueue = JellyfinAPI.apiResponseQueue) -> AnyPublisher<AuthenticationResult, Error> {
        return Future<AuthenticationResult, Error>.init { promise in
            authenticateWithQuickConnectWithRequestBuilder(quickConnectDto: quickConnectDto).execute(apiResponseQueue) { result -> Void in
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
     Authenticates a user with quick connect.
     - POST /Users/AuthenticateWithQuickConnect
     - parameter quickConnectDto: (body) The Jellyfin.Api.Models.UserDtos.QuickConnectDto request. 
     - returns: RequestBuilder<AuthenticationResult> 
     */
    open class func authenticateWithQuickConnectWithRequestBuilder(quickConnectDto: QuickConnectDto) -> RequestBuilder<AuthenticationResult> {
        let urlPath = "/Users/AuthenticateWithQuickConnect"
        let URLString = JellyfinAPI.basePath + urlPath
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: quickConnectDto)

        let urlComponents = URLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<AuthenticationResult>.Type = JellyfinAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**
     Creates a user.
     
     - parameter createUserByName: (body) The create user by name request body. 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: AnyPublisher<UserDto, Error>
     */
    #if canImport(Combine)
    @available(OSX 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func createUserByName(createUserByName: CreateUserByName, apiResponseQueue: DispatchQueue = JellyfinAPI.apiResponseQueue) -> AnyPublisher<UserDto, Error> {
        return Future<UserDto, Error>.init { promise in
            createUserByNameWithRequestBuilder(createUserByName: createUserByName).execute(apiResponseQueue) { result -> Void in
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
     Creates a user.
     - POST /Users/New
     - API Key:
       - type: apiKey X-Emby-Authorization 
       - name: CustomAuthentication
     - parameter createUserByName: (body) The create user by name request body. 
     - returns: RequestBuilder<UserDto> 
     */
    open class func createUserByNameWithRequestBuilder(createUserByName: CreateUserByName) -> RequestBuilder<UserDto> {
        let urlPath = "/Users/New"
        let URLString = JellyfinAPI.basePath + urlPath
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: createUserByName)

        let urlComponents = URLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<UserDto>.Type = JellyfinAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**
     Deletes a user.
     
     - parameter userId: (path) The user id. 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: AnyPublisher<Void, Error>
     */
    #if canImport(Combine)
    @available(OSX 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func deleteUser(userId: String, apiResponseQueue: DispatchQueue = JellyfinAPI.apiResponseQueue) -> AnyPublisher<Void, Error> {
        return Future<Void, Error>.init { promise in
            deleteUserWithRequestBuilder(userId: userId).execute(apiResponseQueue) { result -> Void in
                switch result {
                case .success:
                    promise(.success(()))
                case let .failure(error):
                    promise(.failure(error))
                }
            }
        }.eraseToAnyPublisher()
    }
    #endif

    /**
     Deletes a user.
     - DELETE /Users/{userId}
     - API Key:
       - type: apiKey X-Emby-Authorization 
       - name: CustomAuthentication
     - parameter userId: (path) The user id. 
     - returns: RequestBuilder<Void> 
     */
    open class func deleteUserWithRequestBuilder(userId: String) -> RequestBuilder<Void> {
        var urlPath = "/Users/{userId}"
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

        let requestBuilder: RequestBuilder<Void>.Type = JellyfinAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**
     Initiates the forgot password process for a local user.
     
     - parameter forgotPasswordDto: (body) The forgot password request containing the entered username. 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: AnyPublisher<ForgotPasswordResult, Error>
     */
    #if canImport(Combine)
    @available(OSX 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func forgotPassword(forgotPasswordDto: ForgotPasswordDto, apiResponseQueue: DispatchQueue = JellyfinAPI.apiResponseQueue) -> AnyPublisher<ForgotPasswordResult, Error> {
        return Future<ForgotPasswordResult, Error>.init { promise in
            forgotPasswordWithRequestBuilder(forgotPasswordDto: forgotPasswordDto).execute(apiResponseQueue) { result -> Void in
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
     Initiates the forgot password process for a local user.
     - POST /Users/ForgotPassword
     - parameter forgotPasswordDto: (body) The forgot password request containing the entered username. 
     - returns: RequestBuilder<ForgotPasswordResult> 
     */
    open class func forgotPasswordWithRequestBuilder(forgotPasswordDto: ForgotPasswordDto) -> RequestBuilder<ForgotPasswordResult> {
        let urlPath = "/Users/ForgotPassword"
        let URLString = JellyfinAPI.basePath + urlPath
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: forgotPasswordDto)

        let urlComponents = URLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<ForgotPasswordResult>.Type = JellyfinAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**
     Redeems a forgot password pin.
     
     - parameter forgotPasswordPinDto: (body) The forgot password pin request containing the entered pin. 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: AnyPublisher<PinRedeemResult, Error>
     */
    #if canImport(Combine)
    @available(OSX 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func forgotPasswordPin(forgotPasswordPinDto: ForgotPasswordPinDto, apiResponseQueue: DispatchQueue = JellyfinAPI.apiResponseQueue) -> AnyPublisher<PinRedeemResult, Error> {
        return Future<PinRedeemResult, Error>.init { promise in
            forgotPasswordPinWithRequestBuilder(forgotPasswordPinDto: forgotPasswordPinDto).execute(apiResponseQueue) { result -> Void in
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
     Redeems a forgot password pin.
     - POST /Users/ForgotPassword/Pin
     - parameter forgotPasswordPinDto: (body) The forgot password pin request containing the entered pin. 
     - returns: RequestBuilder<PinRedeemResult> 
     */
    open class func forgotPasswordPinWithRequestBuilder(forgotPasswordPinDto: ForgotPasswordPinDto) -> RequestBuilder<PinRedeemResult> {
        let urlPath = "/Users/ForgotPassword/Pin"
        let URLString = JellyfinAPI.basePath + urlPath
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: forgotPasswordPinDto)

        let urlComponents = URLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<PinRedeemResult>.Type = JellyfinAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**
     Gets the user based on auth token.
     
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: AnyPublisher<UserDto, Error>
     */
    #if canImport(Combine)
    @available(OSX 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getCurrentUser(apiResponseQueue: DispatchQueue = JellyfinAPI.apiResponseQueue) -> AnyPublisher<UserDto, Error> {
        return Future<UserDto, Error>.init { promise in
            getCurrentUserWithRequestBuilder().execute(apiResponseQueue) { result -> Void in
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
     Gets the user based on auth token.
     - GET /Users/Me
     - API Key:
       - type: apiKey X-Emby-Authorization 
       - name: CustomAuthentication
     - returns: RequestBuilder<UserDto> 
     */
    open class func getCurrentUserWithRequestBuilder() -> RequestBuilder<UserDto> {
        let urlPath = "/Users/Me"
        let URLString = JellyfinAPI.basePath + urlPath
        let parameters: [String: Any]? = nil

        let urlComponents = URLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<UserDto>.Type = JellyfinAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**
     Gets a list of publicly visible users for display on a login screen.
     
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: AnyPublisher<[UserDto], Error>
     */
    #if canImport(Combine)
    @available(OSX 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getPublicUsers(apiResponseQueue: DispatchQueue = JellyfinAPI.apiResponseQueue) -> AnyPublisher<[UserDto], Error> {
        return Future<[UserDto], Error>.init { promise in
            getPublicUsersWithRequestBuilder().execute(apiResponseQueue) { result -> Void in
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
     Gets a list of publicly visible users for display on a login screen.
     - GET /Users/Public
     - returns: RequestBuilder<[UserDto]> 
     */
    open class func getPublicUsersWithRequestBuilder() -> RequestBuilder<[UserDto]> {
        let urlPath = "/Users/Public"
        let URLString = JellyfinAPI.basePath + urlPath
        let parameters: [String: Any]? = nil

        let urlComponents = URLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<[UserDto]>.Type = JellyfinAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**
     Gets a user by Id.
     
     - parameter userId: (path) The user id. 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: AnyPublisher<UserDto, Error>
     */
    #if canImport(Combine)
    @available(OSX 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getUserById(userId: String, apiResponseQueue: DispatchQueue = JellyfinAPI.apiResponseQueue) -> AnyPublisher<UserDto, Error> {
        return Future<UserDto, Error>.init { promise in
            getUserByIdWithRequestBuilder(userId: userId).execute(apiResponseQueue) { result -> Void in
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
     Gets a user by Id.
     - GET /Users/{userId}
     - API Key:
       - type: apiKey X-Emby-Authorization 
       - name: CustomAuthentication
     - parameter userId: (path) The user id. 
     - returns: RequestBuilder<UserDto> 
     */
    open class func getUserByIdWithRequestBuilder(userId: String) -> RequestBuilder<UserDto> {
        var urlPath = "/Users/{userId}"
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

        let requestBuilder: RequestBuilder<UserDto>.Type = JellyfinAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**
     Gets a list of users.
     
     - parameter isHidden: (query) Optional filter by IsHidden&#x3D;true or false. (optional)
     - parameter isDisabled: (query) Optional filter by IsDisabled&#x3D;true or false. (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: AnyPublisher<[UserDto], Error>
     */
    #if canImport(Combine)
    @available(OSX 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getUsers(isHidden: Bool? = nil, isDisabled: Bool? = nil, apiResponseQueue: DispatchQueue = JellyfinAPI.apiResponseQueue) -> AnyPublisher<[UserDto], Error> {
        return Future<[UserDto], Error>.init { promise in
            getUsersWithRequestBuilder(isHidden: isHidden, isDisabled: isDisabled).execute(apiResponseQueue) { result -> Void in
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
     Gets a list of users.
     - GET /Users
     - API Key:
       - type: apiKey X-Emby-Authorization 
       - name: CustomAuthentication
     - parameter isHidden: (query) Optional filter by IsHidden&#x3D;true or false. (optional)
     - parameter isDisabled: (query) Optional filter by IsDisabled&#x3D;true or false. (optional)
     - returns: RequestBuilder<[UserDto]> 
     */
    open class func getUsersWithRequestBuilder(isHidden: Bool? = nil, isDisabled: Bool? = nil) -> RequestBuilder<[UserDto]> {
        let urlPath = "/Users"
        let URLString = JellyfinAPI.basePath + urlPath
        let parameters: [String: Any]? = nil

        var urlComponents = URLComponents(string: URLString)
        urlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "isHidden": isHidden?.encodeToJSON(),
            "isDisabled": isDisabled?.encodeToJSON(),
        ])

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<[UserDto]>.Type = JellyfinAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**
     Updates a user.
     
     - parameter userId: (path) The user id. 
     - parameter userDto: (body) The updated user model. 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: AnyPublisher<Void, Error>
     */
    #if canImport(Combine)
    @available(OSX 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func updateUser(userId: String, userDto: UserDto, apiResponseQueue: DispatchQueue = JellyfinAPI.apiResponseQueue) -> AnyPublisher<Void, Error> {
        return Future<Void, Error>.init { promise in
            updateUserWithRequestBuilder(userId: userId, userDto: userDto).execute(apiResponseQueue) { result -> Void in
                switch result {
                case .success:
                    promise(.success(()))
                case let .failure(error):
                    promise(.failure(error))
                }
            }
        }.eraseToAnyPublisher()
    }
    #endif

    /**
     Updates a user.
     - POST /Users/{userId}
     - API Key:
       - type: apiKey X-Emby-Authorization 
       - name: CustomAuthentication
     - parameter userId: (path) The user id. 
     - parameter userDto: (body) The updated user model. 
     - returns: RequestBuilder<Void> 
     */
    open class func updateUserWithRequestBuilder(userId: String, userDto: UserDto) -> RequestBuilder<Void> {
        var urlPath = "/Users/{userId}"
        let userIdPreEscape = "\(APIHelper.mapValueToPathItem(userId))"
        let userIdPostEscape = userIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        urlPath = urlPath.replacingOccurrences(of: "{userId}", with: userIdPostEscape, options: .literal, range: nil)
        let URLString = JellyfinAPI.basePath + urlPath
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: userDto)

        let urlComponents = URLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Void>.Type = JellyfinAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "POST", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**
     Updates a user configuration.
     
     - parameter userId: (path) The user id. 
     - parameter userConfiguration: (body) The new user configuration. 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: AnyPublisher<Void, Error>
     */
    #if canImport(Combine)
    @available(OSX 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func updateUserConfiguration(userId: String, userConfiguration: UserConfiguration, apiResponseQueue: DispatchQueue = JellyfinAPI.apiResponseQueue) -> AnyPublisher<Void, Error> {
        return Future<Void, Error>.init { promise in
            updateUserConfigurationWithRequestBuilder(userId: userId, userConfiguration: userConfiguration).execute(apiResponseQueue) { result -> Void in
                switch result {
                case .success:
                    promise(.success(()))
                case let .failure(error):
                    promise(.failure(error))
                }
            }
        }.eraseToAnyPublisher()
    }
    #endif

    /**
     Updates a user configuration.
     - POST /Users/{userId}/Configuration
     - API Key:
       - type: apiKey X-Emby-Authorization 
       - name: CustomAuthentication
     - parameter userId: (path) The user id. 
     - parameter userConfiguration: (body) The new user configuration. 
     - returns: RequestBuilder<Void> 
     */
    open class func updateUserConfigurationWithRequestBuilder(userId: String, userConfiguration: UserConfiguration) -> RequestBuilder<Void> {
        var urlPath = "/Users/{userId}/Configuration"
        let userIdPreEscape = "\(APIHelper.mapValueToPathItem(userId))"
        let userIdPostEscape = userIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        urlPath = urlPath.replacingOccurrences(of: "{userId}", with: userIdPostEscape, options: .literal, range: nil)
        let URLString = JellyfinAPI.basePath + urlPath
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: userConfiguration)

        let urlComponents = URLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Void>.Type = JellyfinAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "POST", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**
     Updates a user's easy password.
     
     - parameter userId: (path) The user id. 
     - parameter updateUserEasyPassword: (body) The M:Jellyfin.Api.Controllers.UserController.UpdateUserEasyPassword(System.Guid,Jellyfin.Api.Models.UserDtos.UpdateUserEasyPassword) request. 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: AnyPublisher<Void, Error>
     */
    #if canImport(Combine)
    @available(OSX 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func updateUserEasyPassword(userId: String, updateUserEasyPassword: UpdateUserEasyPassword, apiResponseQueue: DispatchQueue = JellyfinAPI.apiResponseQueue) -> AnyPublisher<Void, Error> {
        return Future<Void, Error>.init { promise in
            updateUserEasyPasswordWithRequestBuilder(userId: userId, updateUserEasyPassword: updateUserEasyPassword).execute(apiResponseQueue) { result -> Void in
                switch result {
                case .success:
                    promise(.success(()))
                case let .failure(error):
                    promise(.failure(error))
                }
            }
        }.eraseToAnyPublisher()
    }
    #endif

    /**
     Updates a user's easy password.
     - POST /Users/{userId}/EasyPassword
     - API Key:
       - type: apiKey X-Emby-Authorization 
       - name: CustomAuthentication
     - parameter userId: (path) The user id. 
     - parameter updateUserEasyPassword: (body) The M:Jellyfin.Api.Controllers.UserController.UpdateUserEasyPassword(System.Guid,Jellyfin.Api.Models.UserDtos.UpdateUserEasyPassword) request. 
     - returns: RequestBuilder<Void> 
     */
    open class func updateUserEasyPasswordWithRequestBuilder(userId: String, updateUserEasyPassword: UpdateUserEasyPassword) -> RequestBuilder<Void> {
        var urlPath = "/Users/{userId}/EasyPassword"
        let userIdPreEscape = "\(APIHelper.mapValueToPathItem(userId))"
        let userIdPostEscape = userIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        urlPath = urlPath.replacingOccurrences(of: "{userId}", with: userIdPostEscape, options: .literal, range: nil)
        let URLString = JellyfinAPI.basePath + urlPath
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: updateUserEasyPassword)

        let urlComponents = URLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Void>.Type = JellyfinAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "POST", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**
     Updates a user's password.
     
     - parameter userId: (path) The user id. 
     - parameter updateUserPassword: (body) The M:Jellyfin.Api.Controllers.UserController.UpdateUserPassword(System.Guid,Jellyfin.Api.Models.UserDtos.UpdateUserPassword) request. 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: AnyPublisher<Void, Error>
     */
    #if canImport(Combine)
    @available(OSX 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func updateUserPassword(userId: String, updateUserPassword: UpdateUserPassword, apiResponseQueue: DispatchQueue = JellyfinAPI.apiResponseQueue) -> AnyPublisher<Void, Error> {
        return Future<Void, Error>.init { promise in
            updateUserPasswordWithRequestBuilder(userId: userId, updateUserPassword: updateUserPassword).execute(apiResponseQueue) { result -> Void in
                switch result {
                case .success:
                    promise(.success(()))
                case let .failure(error):
                    promise(.failure(error))
                }
            }
        }.eraseToAnyPublisher()
    }
    #endif

    /**
     Updates a user's password.
     - POST /Users/{userId}/Password
     - API Key:
       - type: apiKey X-Emby-Authorization 
       - name: CustomAuthentication
     - parameter userId: (path) The user id. 
     - parameter updateUserPassword: (body) The M:Jellyfin.Api.Controllers.UserController.UpdateUserPassword(System.Guid,Jellyfin.Api.Models.UserDtos.UpdateUserPassword) request. 
     - returns: RequestBuilder<Void> 
     */
    open class func updateUserPasswordWithRequestBuilder(userId: String, updateUserPassword: UpdateUserPassword) -> RequestBuilder<Void> {
        var urlPath = "/Users/{userId}/Password"
        let userIdPreEscape = "\(APIHelper.mapValueToPathItem(userId))"
        let userIdPostEscape = userIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        urlPath = urlPath.replacingOccurrences(of: "{userId}", with: userIdPostEscape, options: .literal, range: nil)
        let URLString = JellyfinAPI.basePath + urlPath
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: updateUserPassword)

        let urlComponents = URLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Void>.Type = JellyfinAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "POST", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**
     Updates a user policy.
     
     - parameter userId: (path) The user id. 
     - parameter userPolicy: (body) The new user policy. 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: AnyPublisher<Void, Error>
     */
    #if canImport(Combine)
    @available(OSX 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func updateUserPolicy(userId: String, userPolicy: UserPolicy, apiResponseQueue: DispatchQueue = JellyfinAPI.apiResponseQueue) -> AnyPublisher<Void, Error> {
        return Future<Void, Error>.init { promise in
            updateUserPolicyWithRequestBuilder(userId: userId, userPolicy: userPolicy).execute(apiResponseQueue) { result -> Void in
                switch result {
                case .success:
                    promise(.success(()))
                case let .failure(error):
                    promise(.failure(error))
                }
            }
        }.eraseToAnyPublisher()
    }
    #endif

    /**
     Updates a user policy.
     - POST /Users/{userId}/Policy
     - API Key:
       - type: apiKey X-Emby-Authorization 
       - name: CustomAuthentication
     - parameter userId: (path) The user id. 
     - parameter userPolicy: (body) The new user policy. 
     - returns: RequestBuilder<Void> 
     */
    open class func updateUserPolicyWithRequestBuilder(userId: String, userPolicy: UserPolicy) -> RequestBuilder<Void> {
        var urlPath = "/Users/{userId}/Policy"
        let userIdPreEscape = "\(APIHelper.mapValueToPathItem(userId))"
        let userIdPostEscape = userIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        urlPath = urlPath.replacingOccurrences(of: "{userId}", with: userIdPostEscape, options: .literal, range: nil)
        let URLString = JellyfinAPI.basePath + urlPath
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: userPolicy)

        let urlComponents = URLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Void>.Type = JellyfinAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "POST", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

}
