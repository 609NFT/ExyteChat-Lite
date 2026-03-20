//
//  AttachmentsEditor.swift
//  Chat
//
//  Created by Alex.M on 22.06.2022.
//

import SwiftUI

struct AttachmentsEditor<InputViewContent: View>: View {

    typealias InputViewBuilderClosure = ChatView<EmptyView, InputViewContent, DefaultMessageMenuAction>.InputViewBuilderClosure

    @ObservedObject var inputViewModel: InputViewModel

    var inputViewBuilder: InputViewBuilderClosure?
    var chatTitle: String?
    var messageStyler: (String) -> AttributedString
    var availableInputs: [AvailableInputType]
    var localization: ChatLocalization

    var body: some View {
        // Media picker has been removed. This view is a no-op stub.
        EmptyView()
    }
}
