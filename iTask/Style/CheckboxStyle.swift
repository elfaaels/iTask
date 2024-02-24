//
//  CheckboxStyle.swift
//  iTask
//
//  Created by Elfana Anamta Chatya on 24/02/24.
//

import SwiftUI

struct CheckboxStyle: ToggleStyle {
    func makeBody(configuration: Configuration) -> some View {
        return HStack {
            Image(systemName: configuration.isOn ? "checkmark.circle.fill" : "circle" )
                .foregroundColor(configuration.isOn ? .red : .primary)
                .font(.system(size: 30, weight: .semibold, design: .rounded))
                .onTapGesture {
                    configuration.isOn.toggle()
                }
            configuration.label
        }
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    Toggle("Placeholder label" , isOn: .constant(false))
        .toggleStyle(CheckboxStyle())
        .padding()
}
