//
//  ContentView.swift
//  Moonshot
//
//  Created by Reiwil Lugo on 13/3/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Image(.example2)
            .resizable()
            .scaledToFit()
            .containerRelativeFrame(.horizontal) { size, axis in
                size * 0.8
            }
            
            
    }
}

#Preview {
    ContentView()
}
