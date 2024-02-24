//
//  HideKeyboardExtension.swift
//  iTask
//
//  Created by Elfana Anamta Chatya on 24/02/24.
//

import SwiftUI

#if canImport(UIKit)
extension View {
    func hideKeyboard() {
        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
#endif
