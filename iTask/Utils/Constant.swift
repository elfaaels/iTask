//
//  Constant.swift
//  iTask
//
//  Created by Elfana Anamta Chatya on 24/02/24.
//

import SwiftUI

// MARK: - UTILS
let itemFormatter: DateFormatter = {
    let formatter = DateFormatter()
    formatter.dateStyle = .short
    formatter.timeStyle = .medium
    return formatter
}()

// MARK - UI
var backgroundGradient: LinearGradient {
    return LinearGradient(gradient: Gradient(colors: [Color.gray, Color.black]), startPoint: .topLeading, endPoint: .bottomTrailing)
}
