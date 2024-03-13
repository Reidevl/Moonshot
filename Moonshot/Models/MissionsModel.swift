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
        let role: String
    }
    // MARK: - Missions
    let id: Int
    let launchDate: Date?
    let crew: [CrewRole]
    let description: String
    
    // MARK: - Computed properties
    var displayName: String {
        "Apollo \(id)"
    }
    
    var image: String {
        "apollo\(id)"
    }
    
    var formattedLaunchDate: String {
        launchDate?.formatted(date: .abbreviated, time: .omitted) ?? "N/A"
    }
    
}
