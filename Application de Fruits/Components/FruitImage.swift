import SwiftUI

struct FruitImage: View {
    let imageName: String
    let gradientColors: [Color]
    
    var body: some View {
        Image(imageName)
            .resizable()
            .scaledToFit()
            .frame(maxWidth: .infinity)
            .frame(height: 450)
            .background(
                LinearGradient(
                    gradient: Gradient(colors: gradientColors),
                    startPoint: .top,
                    endPoint: .bottom
                )
            )
            .padding(.horizontal, -16)
            .padding(.bottom, 10)
    }   
}
