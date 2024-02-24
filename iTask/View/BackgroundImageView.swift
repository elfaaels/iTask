//
//  BackgroundImageView.swift
//  iTask
//
//  Created by Elfana Anamta Chatya on 24/02/24.
//

import SwiftUI

struct BackgroundImageView: View {
    var body: some View {
      Image("rocket")
            .antialiased(true)
            .resizable()
            .scaledToFill()
            .ignoresSafeArea(.all)
    }
}

#Preview {
    BackgroundImageView()
}
