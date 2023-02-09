//
// TransactionAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class TransactionAPI {

    /**
     
     
     - parameter environment: (path)  
     - parameter index: (path)  
     - parameter reference: (query)  
     - parameter signature: (query)  
     - returns: [Transaction]
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getKineticTransaction(environment: String, index: Int, reference: String, signature: String) async throws -> [Transaction] {
        var requestTask: RequestTask?
        return try await withTaskCancellationHandler {
            try Task.checkCancellation()
            return try await withCheckedThrowingContinuation { continuation in
                guard !Task.isCancelled else {
                  continuation.resume(throwing: CancellationError())
                  return
                }

                requestTask = getKineticTransactionWithRequestBuilder(environment: environment, index: index, reference: reference, signature: signature).execute { result in
                    switch result {
                    case let .success(response):
                        continuation.resume(returning: response.body)
                    case let .failure(error):
                        continuation.resume(throwing: error)
                    }
                }
            }
        } onCancel: { [requestTask] in
            requestTask?.cancel()
        }
    }

    /**
     
     - GET /api/transaction/kinetic-transaction/{environment}/{index}
     - parameter environment: (path)  
     - parameter index: (path)  
     - parameter reference: (query)  
     - parameter signature: (query)  
     - returns: RequestBuilder<[Transaction]> 
     */
    open class func getKineticTransactionWithRequestBuilder(environment: String, index: Int, reference: String, signature: String) -> RequestBuilder<[Transaction]> {
        var localVariablePath = "/api/transaction/kinetic-transaction/{environment}/{index}"
        let environmentPreEscape = "\(APIHelper.mapValueToPathItem(environment))"
        let environmentPostEscape = environmentPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{environment}", with: environmentPostEscape, options: .literal, range: nil)
        let indexPreEscape = "\(APIHelper.mapValueToPathItem(index))"
        let indexPostEscape = indexPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{index}", with: indexPostEscape, options: .literal, range: nil)
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "reference": reference.encodeToJSON(),
            "signature": signature.encodeToJSON(),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<[Transaction]>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     
     
     - parameter environment: (path)  
     - parameter index: (path)  
     - returns: LatestBlockhashResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getLatestBlockhash(environment: String, index: Int) async throws -> LatestBlockhashResponse {
        var requestTask: RequestTask?
        return try await withTaskCancellationHandler {
            try Task.checkCancellation()
            return try await withCheckedThrowingContinuation { continuation in
                guard !Task.isCancelled else {
                  continuation.resume(throwing: CancellationError())
                  return
                }

                requestTask = getLatestBlockhashWithRequestBuilder(environment: environment, index: index).execute { result in
                    switch result {
                    case let .success(response):
                        continuation.resume(returning: response.body)
                    case let .failure(error):
                        continuation.resume(throwing: error)
                    }
                }
            }
        } onCancel: { [requestTask] in
            requestTask?.cancel()
        }
    }

    /**
     
     - GET /api/transaction/latest-blockhash/{environment}/{index}
     - parameter environment: (path)  
     - parameter index: (path)  
     - returns: RequestBuilder<LatestBlockhashResponse> 
     */
    open class func getLatestBlockhashWithRequestBuilder(environment: String, index: Int) -> RequestBuilder<LatestBlockhashResponse> {
        var localVariablePath = "/api/transaction/latest-blockhash/{environment}/{index}"
        let environmentPreEscape = "\(APIHelper.mapValueToPathItem(environment))"
        let environmentPostEscape = environmentPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{environment}", with: environmentPostEscape, options: .literal, range: nil)
        let indexPreEscape = "\(APIHelper.mapValueToPathItem(index))"
        let indexPostEscape = indexPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{index}", with: indexPostEscape, options: .literal, range: nil)
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<LatestBlockhashResponse>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     
     
     - parameter environment: (path)  
     - parameter index: (path)  
     - parameter dataLength: (query)  
     - returns: MinimumRentExemptionBalanceResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getMinimumRentExemptionBalance(environment: String, index: Int, dataLength: Int) async throws -> MinimumRentExemptionBalanceResponse {
        var requestTask: RequestTask?
        return try await withTaskCancellationHandler {
            try Task.checkCancellation()
            return try await withCheckedThrowingContinuation { continuation in
                guard !Task.isCancelled else {
                  continuation.resume(throwing: CancellationError())
                  return
                }

                requestTask = getMinimumRentExemptionBalanceWithRequestBuilder(environment: environment, index: index, dataLength: dataLength).execute { result in
                    switch result {
                    case let .success(response):
                        continuation.resume(returning: response.body)
                    case let .failure(error):
                        continuation.resume(throwing: error)
                    }
                }
            }
        } onCancel: { [requestTask] in
            requestTask?.cancel()
        }
    }

    /**
     
     - GET /api/transaction/minimum-rent-exemption-balance/{environment}/{index}
     - parameter environment: (path)  
     - parameter index: (path)  
     - parameter dataLength: (query)  
     - returns: RequestBuilder<MinimumRentExemptionBalanceResponse> 
     */
    open class func getMinimumRentExemptionBalanceWithRequestBuilder(environment: String, index: Int, dataLength: Int) -> RequestBuilder<MinimumRentExemptionBalanceResponse> {
        var localVariablePath = "/api/transaction/minimum-rent-exemption-balance/{environment}/{index}"
        let environmentPreEscape = "\(APIHelper.mapValueToPathItem(environment))"
        let environmentPostEscape = environmentPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{environment}", with: environmentPostEscape, options: .literal, range: nil)
        let indexPreEscape = "\(APIHelper.mapValueToPathItem(index))"
        let indexPostEscape = indexPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{index}", with: indexPostEscape, options: .literal, range: nil)
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "dataLength": dataLength.encodeToJSON(),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<MinimumRentExemptionBalanceResponse>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     
     
     - parameter environment: (path)  
     - parameter index: (path)  
     - parameter signature: (path)  
     - parameter commitment: (query)  
     - returns: GetTransactionResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getTransaction(environment: String, index: Int, signature: String, commitment: Commitment) async throws -> GetTransactionResponse {
        var requestTask: RequestTask?
        return try await withTaskCancellationHandler {
            try Task.checkCancellation()
            return try await withCheckedThrowingContinuation { continuation in
                guard !Task.isCancelled else {
                  continuation.resume(throwing: CancellationError())
                  return
                }

                requestTask = getTransactionWithRequestBuilder(environment: environment, index: index, signature: signature, commitment: commitment).execute { result in
                    switch result {
                    case let .success(response):
                        continuation.resume(returning: response.body)
                    case let .failure(error):
                        continuation.resume(throwing: error)
                    }
                }
            }
        } onCancel: { [requestTask] in
            requestTask?.cancel()
        }
    }

    /**
     
     - GET /api/transaction/transaction/{environment}/{index}/{signature}
     - parameter environment: (path)  
     - parameter index: (path)  
     - parameter signature: (path)  
     - parameter commitment: (query)  
     - returns: RequestBuilder<GetTransactionResponse> 
     */
    open class func getTransactionWithRequestBuilder(environment: String, index: Int, signature: String, commitment: Commitment) -> RequestBuilder<GetTransactionResponse> {
        var localVariablePath = "/api/transaction/transaction/{environment}/{index}/{signature}"
        let environmentPreEscape = "\(APIHelper.mapValueToPathItem(environment))"
        let environmentPostEscape = environmentPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{environment}", with: environmentPostEscape, options: .literal, range: nil)
        let indexPreEscape = "\(APIHelper.mapValueToPathItem(index))"
        let indexPostEscape = indexPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{index}", with: indexPostEscape, options: .literal, range: nil)
        let signaturePreEscape = "\(APIHelper.mapValueToPathItem(signature))"
        let signaturePostEscape = signaturePreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{signature}", with: signaturePostEscape, options: .literal, range: nil)
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "commitment": commitment.encodeToJSON(),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<GetTransactionResponse>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     
     
     - parameter makeTransferRequest: (body)  
     - returns: Transaction
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func makeTransfer(makeTransferRequest: MakeTransferRequest) async throws -> Transaction {
        var requestTask: RequestTask?
        return try await withTaskCancellationHandler {
            try Task.checkCancellation()
            return try await withCheckedThrowingContinuation { continuation in
                guard !Task.isCancelled else {
                  continuation.resume(throwing: CancellationError())
                  return
                }

                requestTask = makeTransferWithRequestBuilder(makeTransferRequest: makeTransferRequest).execute { result in
                    switch result {
                    case let .success(response):
                        continuation.resume(returning: response.body)
                    case let .failure(error):
                        continuation.resume(throwing: error)
                    }
                }
            }
        } onCancel: { [requestTask] in
            requestTask?.cancel()
        }
    }

    /**
     
     - POST /api/transaction/make-transfer
     - parameter makeTransferRequest: (body)  
     - returns: RequestBuilder<Transaction> 
     */
    open class func makeTransferWithRequestBuilder(makeTransferRequest: MakeTransferRequest) -> RequestBuilder<Transaction> {
        let localVariablePath = "/api/transaction/make-transfer"
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: makeTransferRequest)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Transaction>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }
}
