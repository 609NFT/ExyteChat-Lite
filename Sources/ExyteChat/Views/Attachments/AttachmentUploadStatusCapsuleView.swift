import SwiftUI

struct AttachmentUploadStatusCapsuleView: View {

    private let percent: Int?

    init(_ percent: Int? = nil) {
        self.percent = percent
    }

    var body: some View {
        HStack {
            if let percent {
                Text("\(percent)%")
            }
            ProgressView()
                .tint(.white)
                .scaleEffect(0.7)
        }
        .font(.caption)
        .foregroundColor(.white)
        .opacity(0.8)
        .padding(.top, 4)
        .padding(.bottom, 4)
        .padding(.horizontal, 8)
        .background {
            Capsule()
                .foregroundColor(.black.opacity(0.4))
        }
    }
}
