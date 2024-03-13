//
//  Bundle-Decodable.swift
//  Moonshot
//
//  Created by Reiwil Lugo on 13/3/24.
//

import Foundation

extension Bundle {
    func decode(_ file: String) -> [String: AstronautsModel] {
        guard let url = self.url(forResource: file, withExtension: nil) else {
            fatalError("Failed to locate \(file) in bundle")
        }
        
        guard let data = try? Data(contentsOf: url) else {
            fatalError("Failed to load \(file) from bundle")
        }
        
        let decoder = JSONDecoder()
        
        guard let loaded = try? decoder.decode([String: AstronautsModel].self, from: data) else {
            fatalError("Failed to decode \(file) from bundle")
        }
        
        return loaded
    }
}
