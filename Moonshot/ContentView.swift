//
//  ContentView.swift
//  Moonshot
//
//  Created by Reiwil Lugo on 13/3/24.
//

import SwiftUI


struct ContentView: View {
    let astronauts = Bundle.main.decode("astronauts.json")
    
    var body: some View {
        Text (String(astronauts.count))
    }
}

#Preview {
    ContentView()
}
