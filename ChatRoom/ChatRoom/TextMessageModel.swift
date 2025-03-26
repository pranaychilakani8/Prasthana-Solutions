//
//  TextMessageModel.swift
//  ChatRoomTask
//
//  Created by Pranay on 19/03/25.
//

import Foundation

struct TextMessagesResponse: Codable {
    let textMessages: [LatestTextMessage1]

    enum CodingKeys: String, CodingKey {
        case textMessages = "text_messages"
    }
}


struct LatestTextMessage1: Codable {
    let id: Int
    let message: String?
    let mediaURL: String?
    let mediaFileAttachmentURL : String?
    let createdAt: String
    let fromNumber: String
    let toNumber: String
    let senderLastName: String?
    let status: String
    let textConversationID: Int
    let textRoomID: Int

    enum CodingKeys: String, CodingKey {
        case id
        case message
        case mediaFileAttachmentURL = "media_file_attachment_url"
        case mediaURL = "media_url"
        case createdAt = "created_at"
        case fromNumber = "from_number"
        case toNumber = "to_number"
        case senderLastName = "sender_last_name"
        case status
        case textConversationID = "text_conversation_id"
        case textRoomID = "text_room_id"
    }
}


