import SwiftUI

/// A drop-in replacement for the former Kingfisher-backed CachedAsyncImage.
/// Uses the built-in AsyncImage; cacheKey is accepted but ignored.
struct CachedAsyncImage<Content: View, Placeholder: View>: View {
    let url: URL?
    let cacheKey: String?
    let content: (Image) -> Content
    let placeholder: () -> Placeholder

    init(
        url: URL?,
        cacheKey: String? = nil,
        @ViewBuilder content: @escaping (Image) -> Content,
        @ViewBuilder placeholder: @escaping () -> Placeholder
    ) {
        self.url = url
        self.cacheKey = cacheKey
        self.content = content
        self.placeholder = placeholder
    }

    var body: some View {
        AsyncImage(url: url) { phase in
            switch phase {
            case .success(let image):
                content(image)
            default:
                placeholder()
            }
        }
    }
}
