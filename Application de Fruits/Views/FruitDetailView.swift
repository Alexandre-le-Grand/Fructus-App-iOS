import SwiftUI

struct FruitDetailView: View {
    let fruit: Fruit
    @Environment(\.dismiss) var dismiss
    @State private var isAnimatingImage: Bool = false
    
    let nutritionData = [
        (title: "Énergie", index: 0, icon: "bolt.fill"),
        (title: "Sucre", index: 1, icon: "leaf.fill"),
        (title: "Gras", index: 2, icon: "drop.fill"),
        (title: "Protéines", index: 3, icon: "p.circle.fill"),
        (title: "Vitamines", index: 4, icon: "v.circle.fill"),
        (title: "Minéraux", index: 5, icon: "m.circle.fill")
    ]

    var body: some View {
        ZStack {
            LinearGradient(colors: fruit.gradientColors, startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()
            
            VStack {
                Image(fruit.image)
                    .resizable()
                    .scaledToFit()
                    .padding(40)
                    .shadow(color: .black.opacity(0.2), radius: 20, x: 0, y: 10)
                    .scaleEffect(isAnimatingImage ? 1.0 : 0.7)
                    .offset(y: -50)
                Spacer()
            }
            
            ScrollView(showsIndicators: false) {
                VStack(spacing: 0) {
                    Color.clear.frame(height: 350)
                    
                    VStack(alignment: .leading, spacing: 20) {
                        HStack {
                            VStack(alignment: .leading, spacing: 5) {
                                Text(fruit.title)
                                    .font(.system(size: 38, weight: .heavy, design: .rounded))
                                    .foregroundColor(.primary)
                                
                                Text(fruit.headline)
                                    .font(.headline)
                                    .foregroundColor(fruit.gradientColors[1])
                            }
                            Spacer()
                        }
                        
                        Text("Apports Nutritionnels (100g)")
                            .font(.system(.title3, design: .rounded))
                            .fontWeight(.bold)
                        
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack(spacing: 12) {
                                ForEach(nutritionData, id: \.title) { item in
                                    VStack(spacing: 8) {
                                        Image(systemName: item.icon)
                                            .font(.title2)
                                            .foregroundColor(fruit.gradientColors[1])
                                        
                                        Text(item.title)
                                            .font(.caption2)
                                            .fontWeight(.bold)
                                        
                                        Text(fruit.nutrition[item.index])
                                            .font(.system(.caption, design: .monospaced))
                                    }
                                    .frame(width: 100, height: 110)
                                    .background(Color.secondary.opacity(0.1))
                                    .cornerRadius(20)
                                }
                            }
                        }

                        Text("En savoir plus")
                            .font(.system(.title3, design: .rounded))
                            .fontWeight(.bold)
                        
                        Text(fruit.description)
                            .font(.body)
                            .lineSpacing(6)
                            .foregroundColor(.secondary)
                    }
                    .padding(30)
                    .padding(.bottom, 50)
                    .background(Color(.systemBackground))
                    .cornerRadius(40, corners: [.topLeft, .topRight])
                }
            }
            .ignoresSafeArea()
        }
        .navigationBarTitleDisplayMode(.inline)
        .onAppear {
            withAnimation(.easeOut(duration: 0.5)) {
                isAnimatingImage = true
            }
        }
    }
}

extension View {
    func cornerRadius(_ radius: CGFloat, corners: UIRectCorner) -> some View {
        clipShape(RoundedCorner(radius: radius, corners: corners))
    }
}

struct RoundedCorner: Shape {
    var radius: CGFloat = .infinity
    var corners: UIRectCorner = .allCorners
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        return Path(path.cgPath)
    }
}

#Preview {
    FruitDetailView(fruit: Fruit.fruites[0])
}
