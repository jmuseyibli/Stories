//
//  Snap.swift
//  PASHABankSME
//
//  Created by Javid Museyibli on 07.08.21.
//

import Foundation

public struct Snap: Codable {
    public let id: Int?
    public let mediaType: MediaType?
    public let mediaId: String?
    public let snapLanguage: SnapTitle?

    public func mediaUrl(baseURL: String) -> String {
        switch mediaType {
        case .photo:
            return "\(baseURL)/v1/stories/image/\(mediaId ?? "")"
        case .video:
            return "\(baseURL)/v1/stories/video/\(mediaId ?? "")"
        case .none:
            return ""
        }
    }
}
