//
//  APIService.swift
//  ChatRoomTask
//
//  Created by Pranay on 19/03/25.
//

import Foundation
import Moya

//enum APIService {
//    case getToken
//    case getTextRooms
//    case getMessages(roomId: String)
//}
//
//extension APIService: TargetType {
//    var baseURL: URL { return URL(string: "https://mmr-staging-api.mindoula.com")! }
//    
//    var path: String {
//        switch self {
//        case .getToken:
//            return "/oauth/token"
//        case .getTextRooms:
//            return "/text_rooms"
//        case .getMessages(let roomId):
//            return "/text_rooms/\(roomId)/text_messages"
//        }
//    }
//    
//    var method: Moya.Method {
//        switch self {
//        case .getToken:
//            return .post
//        default:
//            return .get
//        }
//    }
//    
//    var task: Task {
//        switch self {
//        case .getToken:
//            return .requestParameters(
//                parameters: [
//                    "client_id": "ZMqCQoofvjFaWtws5I0akGH1ULf9ax6SWUWrSxRAovI",
//                    "client_secret": "NACb_qbegrdyJjxKg1oXuBJj9yqbldq1HUkROIjfNFo",
//                    "mobile_number": "2025056789",
//                    "mobile_auth_code": "123456",
//                    "grant_type": "password"
//                ],
//                encoding: URLEncoding.default
//            )
//        default:
//            return .requestPlain
//        }
//    }
//    
//    var headers: [String: String]? {
//        if case .getToken = self { return nil }  // No headers needed for token request
//
//        guard let token = TokenManager.shared.accessToken, !token.isEmpty else {
//            print("Missing Access Token")
//            return nil
//        }
//
//        return [
//            "Authorization": "Bearer \(token)",
//            "Accept": "application/vnd.mindoula.com; version=1"
//        ]
//    }
//}

//working ----

//import Moya
//
//enum APIService {
//    case getToken(mobileNumber: String, authCode: String)
//    case getTextRooms(token: String)
//}
//
//extension APIService: TargetType {
//    var baseURL: URL {
//        return URL(string: "https://mmr-staging-api.mindoula.com")!
//    }
//
//    var path: String {
//        switch self {
//        case .getToken:
//            return "/oauth/token"
//        case .getTextRooms:
//            return "/text_rooms"
//        }
//    }
//
//    var method: Moya.Method {
//        switch self {
//        case .getToken:
//            return .post
//        case .getTextRooms:
//            return .get
//        }
//    }
//
//    var task: Task {
//        switch self {
//        case .getToken(let mobileNumber, let authCode):
//            return .requestParameters(parameters: [
//                "client_id": "ZMqCQoofvjFaWtws5I0akGH1ULf9ax6SWUWrSxRAovI",
//                "client_secret": "NACb_qbegrdyJjxKg1oXuBJj9yqbldq1HUkROIjfNFo",
//                "mobile_number": mobileNumber,
//                "mobile_auth_code": authCode,
//                "grant_type": "password"
//            ], encoding: JSONEncoding.default)
//
//        case .getTextRooms(let token):
//            return .requestPlain
//        }
//    }
//
//    var headers: [String: String]? {
//        switch self {
//        case .getToken:
//            return [
//                "Content-Type": "application/json",
//                "Accept": "application/vnd.mindoula.com; version=1"
//            ]
//        case .getTextRooms(let token):
//            return [
//                "Authorization": "Bearer \(token)",
//                "Accept": "application/vnd.mindoula.com; version=1"
//            ]
//        }
//    }
//
//}
// working --

enum APIService {
    case getToken(mobileNumber: String, authCode: String)
    case getTextRooms(token: String)
    case getMessages(textRoomId: Int, token: String)
}

extension APIService: TargetType {
    var baseURL: URL {
        return URL(string: "https://mmr-staging-api.mindoula.com")!
    }

    var path: String {
        switch self {
        case .getToken:
            return "/oauth/token"
        case .getTextRooms:
            return "/text_rooms"
        case .getMessages(let textRoomId, _):
            return "/text_rooms/\(textRoomId)/text_messages"
        }
    }

    var method: Moya.Method {
        switch self {
        case .getToken:
            return .post
        case .getTextRooms, .getMessages:
            return .get
        }
    }

    var task: Task {
        switch self {
        case .getToken(let mobileNumber, let authCode):
            return .requestParameters(parameters: [
                "client_id": "ZMqCQoofvjFaWtws5I0akGH1ULf9ax6SWUWrSxRAovI",
                "client_secret": "NACb_qbegrdyJjxKg1oXuBJj9yqbldq1HUkROIjfNFo",
                "mobile_number": mobileNumber,
                "mobile_auth_code": authCode,
                "grant_type": "password"
            ], encoding: JSONEncoding.default)

        case .getTextRooms, .getMessages:
            return .requestPlain
        }
    }

    var headers: [String: String]? {
        switch self {
        case .getToken:
            return [
                "Content-Type": "application/json",
                "Accept": "application/vnd.mindoula.com; version=1"
            ]
        case .getTextRooms(let token), .getMessages(_, let token):
            return [
                "Authorization": "Bearer \(token)",
                "Accept": "application/vnd.mindoula.com; version=1"
            ]
        }
    }
}
