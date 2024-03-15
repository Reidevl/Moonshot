//
//  AstronautsModel.swift
//  Moonshot
//
//  Created by Reiwil Lugo on 13/3/24.
//

import Foundation

struct AstronautsModel: Codable, Identifiable {
    let id: String
    let name: String
    let description: String
}

struct CrewMember {
    let role: String
    let astronaut: AstronautsModel
}
