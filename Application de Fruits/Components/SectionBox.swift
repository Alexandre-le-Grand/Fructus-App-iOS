import SwiftUI

struct SectionBox<Content: View>: View {
    let title: String
    let icon: String
    let content: Content
    
    init(title: String, icon: String, @ViewBuilder content: () -> Content) {
        self.title = title
        self.icon = icon
        self.content = content()
    }
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            VStack{
                HStack {
                    Text(title)
                        .font(.headline)
                        .fontWeight(.bold)
                    Spacer()
                    Image(systemName: icon)
                }
                .padding(.bottom, 5)
                Divider()
                content
            }
        }
        .padding()
        .background(RoundedRectangle(cornerRadius: 10).fill(Color.gray.opacity(0.3)))
    }
}
