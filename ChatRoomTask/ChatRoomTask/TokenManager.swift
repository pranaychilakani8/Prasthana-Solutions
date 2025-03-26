//
//  TokenManager.swift
//  ChatRoomTask
//
//  Created by Pranay on 19/03/25.
//

import Foundation
import Moya

//working ----

//import Moya
//
//class NetworkManager {
//    static let shared = NetworkManager()
//    private let provider = MoyaProvider<APIService>()
//
//    private init() {}
//
//    func getToken(mobileNumber: String, authCode: String, completion: @escaping (Result<String, Error>) -> Void) {
//        provider.request(.getToken(mobileNumber: mobileNumber, authCode: authCode)) { result in
//            switch result {
//            case .success(let response):
//                do {
//                    let json = try JSONSerialization.jsonObject(with: response.data, options: []) as? [String: Any]
//                    if let token = json?["access_token"] as? String {
//                        completion(.success(token))
//                    } else {
//                        completion(.failure(NSError(domain: "Invalid Token", code: 0, userInfo: nil)))
//                    }
//                } catch {
//                    completion(.failure(error))
//                }
//            case .failure(let error):
//                completion(.failure(error))
//            }
//        }
//    }
//
//    func getTextRooms(token: String, completion: @escaping (Result<[TextRoom], Error>) -> Void) {
//        provider.request(.getTextRooms(token: token)) { result in
//            switch result {
//            case .success(let response):
//                do {
//                    let decodedResponse = try JSONDecoder().decode(Empty.self, from: response.data)
//                    completion(.success(decodedResponse.textRooms))
//                } catch {
//                    completion(.failure(error))
//                }
//            case .failure(let error):
//                completion(.failure(error))
//            }
//        }
//    }
//}
//working ----



class NetworkManager {
    static let shared = NetworkManager()
    private let provider = MoyaProvider<APIService>()

    private init() {}

    func getToken(mobileNumber: String, authCode: String, completion: @escaping (Result<String, Error>) -> Void) {
        provider.request(.getToken(mobileNumber: mobileNumber, authCode: authCode)) { result in
            switch result {
            case .success(let response):
                do {
                    let json = try JSONSerialization.jsonObject(with: response.data, options: []) as? [String: Any]
                    if let token = json?["access_token"] as? String {
                        print("Token Received: \(token)") 
                        completion(.success(token))
                    } else {
                        completion(.failure(NSError(domain: "Invalid Token", code: 0, userInfo: nil)))
                    }
                } catch {
                    completion(.failure(error))
                }
            case .failure(let error):
                completion(.failure(error))
            }
        }
    }

    func getTextRooms(token: String, completion: @escaping (Result<[TextRoom], Error>) -> Void) {
        provider.request(.getTextRooms(token: token)) { result in
            switch result {
            case .success(let response):
                do {
                    let decodedResponse = try JSONDecoder().decode(Empty.self, from: response.data)
                    completion(.success(decodedResponse.textRooms))
                } catch {
                    completion(.failure(error))
                }
            case .failure(let error):
                completion(.failure(error))
            }
        }
    }

    func getMessages(textRoomId: Int, token: String, completion: @escaping (Result<[LatestTextMessage1], Error>) -> Void) {
            provider.request(.getMessages(textRoomId: textRoomId, token: token)) { result in
                switch result {
                case .success(let response):
                    do {
                        // Print API Response
                        let rawString = String(data: response.data, encoding: .utf8) ?? "Empty response"
                        print("Raw API Response: \(rawString)")

                        // Decode using TextMessagesResponse model
                        let decodedResponse = try JSONDecoder().decode(TextMessagesResponse.self, from: response.data)
                        completion(.success(decodedResponse.textMessages))
                    } catch {
                        print("Decoding Error: \(error)")
                        completion(.failure(error))
                    }
                case .failure(let error):
                    completion(.failure(error))
            }
        }
    }
}

