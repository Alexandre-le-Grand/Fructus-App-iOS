import SwiftUI

struct TextTitle: View {
    let title: String
    let description: String
    let color: Color
    
    var body: some View {
        VStack(spacing: 15) {
            Text(title)
                .font(.system(size: 36, weight: .bold))
                .foregroundColor(color)
            
            Text(description)
                .font(.system(size: 16, weight: .medium))
                .multilineTextAlignment(.center)
                .foregroundColor(.white)
                .padding(.horizontal, 20)
        }
    }
}
