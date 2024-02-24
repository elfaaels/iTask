//
//  ListRowItemView.swift
//  iTask
//
//  Created by Elfana Anamta Chatya on 24/02/24.
//

import SwiftUI

struct ListRowItemView: View {
    @Environment(\.managedObjectContext) private var viewContext
    @ObservedObject var item: Item

    var body: some View {
        Toggle(isOn: $item.completion) {
            Text(item.task ?? "")
                .font(.system(.title3, design: .rounded))
                .fontWeight(.semibold)
                .foregroundColor(item.completion ?  Color.red : Color.primary)
                .padding(.vertical, 12)
                .animation(.default)
                .strikethrough(item.completion)
        }
        .toggleStyle(CheckboxStyle())
        .onReceive(item.objectWillChange, perform: { _ in
            if self.viewContext.hasChanges {
                try? self.viewContext.save()
            }
        })
    }
}

//#Preview {
//    ListRowItemView(item: Item())
//}
