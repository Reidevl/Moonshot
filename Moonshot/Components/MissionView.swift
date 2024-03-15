//
//  MissionView.swift
//  Moonshot
//
//  Created by Reiwil Lugo on 15/3/24.
//

import SwiftUI

struct MissionView: View {
    let mission: MissionsModel
    
    var body: some View {
        ScrollView {
            VStack {
                Image(mission.image)
                    .resizable()
                    .scaledToFit()
                    .containerRelativeFrame(.horizontal) { width, axis in
                        width * 0.6
                    }
                
                VStack(alignment: .leading) {
                    Text("Mission Highlights")
                        .font(.title.bold())
                        .padding(.bottom, 5)
                    
                    Text(mission.description)
                }
                .padding(.horizontal)
            }
            .padding(.bottom)
        }
        .navigationTitle(mission.displayName)
        .navigationBarTitleDisplayMode(.inline)
        .background(.darkBackground)
    }
}

#Preview {
    let missions: [MissionsModel] = Bundle.main.decode("missions.json")
    
    return MissionView(mission: missions[0])
        .preferredColorScheme(.dark)
}
