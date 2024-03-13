//
//  ContentView.swift
//  Moonshot
//
//  Created by Reiwil Lugo on 13/3/24.
//

import SwiftUI


struct ContentView: View {
    let astronauts: [String: AstronautsModel] = Bundle.main.decode("astronauts.json")
    let missions: [MissionsModel] = Bundle.main.decode("missions.json")
    
    var body: some View {
        Text (String(astronauts.count))
//        Text (String(missions.count))
    }
}

#Preview {
    ContentView()
}
