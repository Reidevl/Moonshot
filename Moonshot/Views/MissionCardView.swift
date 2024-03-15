//
//  MissionCardView.swift
//  Moonshot
//
//  Created by Reiwil Lugo on 15/3/24.
//

import SwiftUI

struct MissionCardView: View {
    let mission: MissionsModel
    
    var body: some View {
        VStack {
            Image(mission.image)
                .resizable()
                .scaledToFit()
                .frame(width: 100, height: 100)
                .padding()
            
            VStack {
                Text(mission.displayName)
                    .font(.headline)
                    .foregroundStyle(.white)
                
                Text(mission.formattedLaunchDate)
                    .font(.caption)
                    .foregroundStyle(.white.opacity(0.5))
            }
            .padding(.vertical)
            .frame(maxWidth: .infinity)
            .background(.lightBackground)
        }
        .clipShape(.rect(cornerRadius: 10))
            .overlay(
                RoundedRectangle(cornerRadius: 10)
                    .stroke(.lightBackground)
            )
    }
}

#Preview {
    let mission: [MissionsModel] = Bundle.main.decode("missions.json")
    
    return MissionCardView(mission: mission[0])
}
