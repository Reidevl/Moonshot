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
    
    let columns = [
        GridItem(.adaptive(minimum: 150))
    ]
    
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVGrid(columns: columns) {
                    ForEach(missions) { mission in
                        NavigationLink {
                            MissionView(mission: mission, astronauts: astronauts)
                        } label: {
                            MissionCardView(mission: mission)
                        }
                    }
                }
                .padding([.horizontal, .bottom])
            }
            .navigationTitle("Moonshot")
            .background(.darkBackground).preferredColorScheme(.dark)
        }
    }
}

#Preview {
    ContentView()
}
