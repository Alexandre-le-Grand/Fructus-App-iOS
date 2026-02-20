import SwiftUI

struct ActionButton: View {
    let title: String
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            HStack(spacing: 10) {
                Text(title)
                    .font(.system(size: 18, weight: .semibold))
                Image(systemName: "arrow.right.circle")
            }
            .foregroundColor(.white)
            .padding(.vertical, 12)
            .padding(.horizontal, 20)
            .background(
                Capsule()
                    .stroke(Color.white, lineWidth: 2)
            )
        }
    }
}
