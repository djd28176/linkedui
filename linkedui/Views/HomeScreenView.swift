//
//  HomeScreenView.swift
//  linkedui
//
//  Created by Jindong Du on 12/8/23.
//

import SwiftUI

struct HomeScreenView: View {
    var body: some View {
        VStack(spacing:20) {
            ProfileAndPostView()
            PostView()
        }
    }
}

#Preview {
    HomeScreenView()
}
