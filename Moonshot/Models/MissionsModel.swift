//
//  MissionsModel.swift
//  Moonshot
//
//  Created by Reiwil Lugo on 13/3/24.
//

import Foundation

struct MissionsModel: Codable, Identifiable {
    // MARK: - Crew
    struct CrewRole: Codable {
        let name: String
        let row: String
    }
    // MARK: - Missions
    let id: Int
    let launchDate: String?
    let crew: [CrewRole]
    let description: String
}
