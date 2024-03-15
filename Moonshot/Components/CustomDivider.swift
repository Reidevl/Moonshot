//
//  CustomDivider.swift
//  Moonshot
//
//  Created by Reiwil Lugo on 15/3/24.
//

import SwiftUI

struct CustomDivider: View {
    var body: some View {
        Rectangle()
            .frame(height: 1.5)
            .foregroundStyle(.lightBackground)
            .padding(.vertical)
    }
}

#Preview {
    CustomDivider()
}
