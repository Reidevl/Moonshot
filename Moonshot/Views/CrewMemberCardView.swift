//
//  CrewMemberCardView.swift
//  Moonshot
//
//  Created by Reiwil Lugo on 15/3/24.
//

import SwiftUI

struct CrewMemberCardView: View {
    let astronautId: String
    let astronautName: String
    let role: String
    
    var body: some View {
        HStack {
            Image(astronautId)
                .resizable()
                .frame(width: 104, height: 72)
                .scaledToFit()
                .clipShape(.capsule)
                .overlay(
                    Capsule()
                        .strokeBorder(.white, lineWidth: 1)
                )
            
            VStack(alignment: .leading) {
                Text(astronautName)
                    .foregroundStyle(.white)
                    .font(.headline)
                
                Text(role)
                    .foregroundStyle(.white.opacity(0.5))
            }
        }
        .padding(.horizontal)
    }
}

#Preview {
    let astronautId = "white"
    let astronautName = "Edward H. White II"
    let role = "Senior Pilot"
    
    return CrewMemberCardView(astronautId: astronautId, astronautName: astronautName, role: role)
}
