//
//  TextRoomModel.swift
//  ChatRoom
//
//  Created by Pranay on 21/03/25.
//

import Foundation

struct Empty: Codable {
    let textRooms: [TextRoom]
    let meta: Meta

    enum CodingKeys: String, CodingKey {
        case textRooms = "text_rooms"
        case meta
    }
}

// MARK: - Meta
struct Meta: Codable {
    let totalUnreadCount: Int?

    enum CodingKeys: String, CodingKey {
        case totalUnreadCount = "total_unread_count"
    }
}

// MARK: - TextRoom
struct TextRoom: Codable {
    let id, careExtenderID, memberID: Int
    let active: Bool
    let memberMobileNumber, careExtenderTwilioNumber, createdAt, updatedAt: String
    let unreadCount: Int
    let memberOptedOut: Bool
    let memberPhoneNumberType: Int?
    let memberPhoneNumberUnsupportedForSMS: Bool
    let member: Member
    let latestTextMessage: LatestTextMessage?

    enum CodingKeys: String, CodingKey {
        case id
        case careExtenderID = "care_extender_id"
        case memberID = "member_id"
        case active
        case memberMobileNumber = "member_mobile_number"
        case careExtenderTwilioNumber = "care_extender_twilio_number"
        case createdAt = "created_at"
        case updatedAt = "updated_at"
        case unreadCount = "unread_count"
        case memberOptedOut = "member_opted_out"
        case memberPhoneNumberType = "member_phone_number_type"
        case memberPhoneNumberUnsupportedForSMS = "member_phone_number_unsupported_for_sms"
        case member
        case latestTextMessage = "latest_text_message"
    }
}

// MARK: - LatestTextMessage
struct LatestTextMessage: Codable {
    let id, textRoomID, textConversationID: Int
    let message: String?
    let fromNumber, toNumber: String
    let errorCode, errorMessage: JSONNull?
    let status: Status
    let createdAt: String
    let senderLastName: SenderLastName
    let mediaURL: String?
    let mediaFileAttachmentURL: String?
    let contentType: String?
    let messageForPayload: String
    let hidden: Bool

    enum CodingKeys: String, CodingKey {
        case id
        case textRoomID = "text_room_id"
        case textConversationID = "text_conversation_id"
        case message
        case fromNumber = "from_number"
        case toNumber = "to_number"
        case errorCode = "error_code"
        case errorMessage = "error_message"
        case status
        case createdAt = "created_at"
        case senderLastName = "sender_last_name"
        case mediaURL = "media_url"
        case mediaFileAttachmentURL = "media_file_attachment_url"
        case contentType = "content_type"
        case messageForPayload = "message_for_payload"
        case hidden
    }
}

enum SenderLastName: String, Codable {
    case mind = "Mind"
}

enum Status: String, Codable {
    case delivered = "delivered"
    case sending = "sending"
}

// MARK: - Member
struct Member: Codable {
    let id: Int
    let firstName, lastName: String
    let uid, birthDate: String?
    let gender: Gender
    let activeForChat: Bool
    let userConfirmedAt: String?
    let phoneNumbers: [PhoneNumber]
    let memberProgramID: Int?
    let primaryLanaguage: PrimaryLanaguage?
    let preferredName: String?
    let pronoun: Pronoun?
    let communicationPreferenceByPhone: Int?
    let communicationPreferenceByEmail, communicationPreferenceBySecureMessaging: JSONNull?
    let communicationPreferenceByTextMessaging: Int?
    let eligibleForCallRecordings: Bool
    let accountStatus: AccountStatus
    let displayCallIcon: Bool
    let primaryForText, primaryForCalls: PrimaryFor?
    let enableCallIcon: Bool
    let careExtenderPrecedenceMemberProgramID: Int?
    let timezone: Timezone

    enum CodingKeys: String, CodingKey {
        case id
        case firstName = "first_name"
        case lastName = "last_name"
        case uid
        case birthDate = "birth_date"
        case gender
        case activeForChat = "active_for_chat"
        case userConfirmedAt = "user_confirmed_at"
        case phoneNumbers = "phone_numbers"
        case memberProgramID = "member_program_id"
        case primaryLanaguage = "primary_lanaguage"
        case preferredName = "preferred_name"
        case pronoun
        case communicationPreferenceByPhone = "communication_preference_by_phone"
        case communicationPreferenceByEmail = "communication_preference_by_email"
        case communicationPreferenceBySecureMessaging = "communication_preference_by_secure_messaging"
        case communicationPreferenceByTextMessaging = "communication_preference_by_text_messaging"
        case eligibleForCallRecordings = "eligible_for_call_recordings"
        case accountStatus = "account_status"
        case displayCallIcon = "display_call_icon"
        case primaryForText = "primary_for_text"
        case primaryForCalls = "primary_for_calls"
        case enableCallIcon = "enable_call_icon"
        case careExtenderPrecedenceMemberProgramID = "care_extender_precedence_member_program_id"
        case timezone
    }
}

enum AccountStatus: String, Codable {
    case masAccountLockedWithInvalidCodeAttempts = "mas_account_locked_with_invalid_code_attempts"
    case masAccountNotCreatedWithoutActiveStatus = "mas_account_not_created_without_active_status"
    case masAccountNotCreatedWithoutContactInfo = "mas_account_not_created_without_contact_info"
    case masCurrentlyNotSignedIn = "mas_currently_not_signed_in"
    case masLimitedAccess = "mas_limited_access"
    case masNeverSignedIn = "mas_never_signed_in"
    case masSignedIn = "mas_signed_in" // Add this missing case
}


enum Gender: String, Codable {
    case gDeclined = "g_declined"
    case gFemale = "g_female"
    case gMale = "g_male"
}

// MARK: - PhoneNumber
struct PhoneNumber: Codable {
    let id: Int
    let phoneNumber: String
    let phoneNumberBelongsTo: String?
    let phoneNumberType: PhoneNumberType
    let primaryPhoneNumber: Bool
    let phoneNumberStatusID: Int?
    let doNotCall: Bool

    enum CodingKeys: String, CodingKey {
        case id
        case phoneNumber = "phone_number"
        case phoneNumberBelongsTo = "phone_number_belongs_to"
        case phoneNumberType = "phone_number_type"
        case primaryPhoneNumber = "primary_phone_number"
        case phoneNumberStatusID = "phone_number_status_id"
        case doNotCall = "do_not_call"
    }
}

enum PhoneNumberType: String, Codable {
    case pntLandline = "pnt_landline"
    case pntMobile = "pnt_mobile"
}

// MARK: - PrimaryFor
struct PrimaryFor: Codable {
    let id: Int
    let phoneNumber: String
    let phoneNumberType: PhoneNumberType
    let verbalConsentForMessages, doNotCall, optedOutFromMmrCommunications: Bool
    let lastContactedAt: String?
    let previousCallStatus: JSONNull?
    let phoneNumberStatus: PhoneNumberStatus
    let familyContact: JSONNull?

    enum CodingKeys: String, CodingKey {
        case id
        case phoneNumber = "phone_number"
        case phoneNumberType = "phone_number_type"
        case verbalConsentForMessages = "verbal_consent_for_messages"
        case doNotCall = "do_not_call"
        case optedOutFromMmrCommunications = "opted_out_from_mmr_communications"
        case lastContactedAt = "last_contacted_at"
        case previousCallStatus = "previous_call_status"
        case phoneNumberStatus = "phone_number_status"
        case familyContact = "family_contact"
    }
}

// MARK: - PhoneNumberStatus
struct PhoneNumberStatus: Codable {
    let id: Int
    let name: Name
    let active: Bool
    let displayOrder: Int

    enum CodingKeys: String, CodingKey {
        case id, name, active
        case displayOrder = "display_order"
    }
}

enum Name: String, Codable {
    case correctNumber = "Correct Number"
}

enum PrimaryLanaguage: String, Codable {
    case plArabic = "pl_arabic"
}

enum Pronoun: String, Codable {
    case pHe = "p_he"
    case pOther = "p_other"
    case pThey = "p_they"
}

// MARK: - Timezone
struct Timezone: Codable {
    let id: Int
    let areaName: AreaName
    let timezoneName: TimezoneName
    let abbreviation: Abbreviation

    enum CodingKeys: String, CodingKey {
        case id
        case areaName = "area_name"
        case timezoneName = "timezone_name"
        case abbreviation
    }
}

enum Abbreviation: String, Codable {
    case ct = "CT"
    case et = "ET"
    case it = "IT"
    case mst = "MST"
    case pt = "PT"
}

enum AreaName: String, Codable {
    case arizona = "Arizona"
    case asiaKolkata = "Asia/Kolkata"
    case centralTimeUSCanada = "Central Time (US & Canada)"
    case easternTimeUSCanada = "Eastern Time (US & Canada)"
    case pacificTimeUSCanada = "Pacific Time (US & Canada)"
}

enum TimezoneName: String, Codable {
    case americaChicago = "America/Chicago"
    case americaLosAngeles = "America/Los_Angeles"
    case americaNewYork = "America/New_York"
    case americaPhoenix = "America/Phoenix"
    case asiaKolkata = "Asia/Kolkata"
}

// MARK: - Encode/decode helpers

class JSONNull: Codable, Hashable {

    public static func == (lhs: JSONNull, rhs: JSONNull) -> Bool {
            return true
    }

    public var hashValue: Int {
            return 0
    }

    public init() {}

    public required init(from decoder: Decoder) throws {
            let container = try decoder.singleValueContainer()
            if !container.decodeNil() {
                    throw DecodingError.typeMismatch(JSONNull.self, DecodingError.Context(codingPath: decoder.codingPath, debugDescription: "Wrong type for JSONNull"))
            }
    }

    public func encode(to encoder: Encoder) throws {
            var container = encoder.singleValueContainer()
            try container.encodeNil()
    }
}
