//
//  TokenManager.swift
//  ChatRoom
//
//  Created by Pranay on 21/03/25.
//

import Foundation
import Moya

class NetworkManager {
    static let shared = NetworkManager()
    private let provider = MoyaProvider<APIService>()
    var cachedToken: String?

    private init() {}

    // MARK: - Get Token (Fetch only once)
    func getToken(completion: @escaping (Result<String, Error>) -> Void) {
        if let token = cachedToken {
            print("Using cached token: \(token)")
            completion(.success(token))
            return
        }

        print("Fetching new token...")

        provider.request(.getToken) { result in
            switch result {
            case .success(let response):
                do {
                    let json = try JSONSerialization.jsonObject(with: response.data, options: []) as? [String: Any]
                    if let token = json?["access_token"] as? String {
                        self.cachedToken = token
                        print("Token Received & Cached: \(token)")
                        completion(.success(token))
                    } else {
                        print("Failed to parse token")
                        completion(.failure(NSError(domain: "Invalid Token", code: 0, userInfo: nil)))
                    }
                } catch {
                    print("JSON Parsing Error: \(error)")
                    completion(.failure(error))
                }
            case .failure(let error):
                print("Token Request Failed: \(error)")
                completion(.failure(error))
            }
        }
    }

    // MARK: - Get Text Rooms (Auto-fetch token)
    func getTextRooms(completion: @escaping (Result<[TextRoom], Error>) -> Void) {
        print("Fetching text rooms...")

        getToken { [weak self] result in
            switch result {
            case .success(let token):
                self?.provider.request(.getTextRooms(token: token)) { result in
                    switch result {
                    case .success(let response):
                        do {
                            let decodedResponse = try JSONDecoder().decode(Empty.self, from: response.data)
                            completion(.success(decodedResponse.textRooms))
                        } catch {
                            print("Decoding Error: \(error)")
                            completion(.failure(error))
                        }
                    case .failure(let error):
                        print("Fetching Text Rooms Failed: \(error)")
                        completion(.failure(error))
                    }
                }
            case .failure(let error):
                completion(.failure(error))
            }
        }
    }

    // MARK: - Get Messages (Auto-fetch token)
    func getMessages(textRoomId: Int, completion: @escaping (Result<[LatestTextMessage1], Error>) -> Void) {
        print("Fetching messages for Text Room ID: \(textRoomId)")

        getToken { [weak self] result in
            switch result {
            case .success(let token):
                self?.provider.request(.getMessages(textRoomId: textRoomId, token: token)) { result in
                    switch result {
                    case .success(let response):
                        do {
                            let rawString = String(data: response.data, encoding: .utf8) ?? "Empty response"
                            print("Messages API Response: \(rawString)")

                            let decodedResponse = try JSONDecoder().decode(TextMessagesResponse.self, from: response.data)
                            completion(.success(decodedResponse.textMessages))
                        } catch {
                            print("Decoding Error: \(error)")
                            completion(.failure(error))
                        }
                    case .failure(let error):
                        print("Fetching Messages Failed: \(error)")
                        completion(.failure(error))
                    }
                }
            case .failure(let error):
                completion(.failure(error))
            }
        }
    }
}
