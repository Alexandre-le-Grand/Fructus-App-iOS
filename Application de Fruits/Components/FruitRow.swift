import SwiftUI

struct FruitRow: View {
    let fruit: Fruit
    
    var body: some View {
        HStack {
            ZStack {
                LinearGradient(
                    gradient: Gradient(colors: fruit.gradientColors),
                    startPoint: .top,
                    endPoint: .bottom
                )
                .frame(width: 90, height: 90)
                .cornerRadius(10)
                
                Image(fruit.image)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 80, height: 80)
            }
            .padding(.top, 10)
            
            
            VStack(alignment: .leading) {
                Text(fruit.title)
                    .font(.system(size: 25, weight: .bold))
                Text(fruit.headline)
                    .font(.subheadline)
                    .foregroundColor(.gray)
                    .lineLimit(2)
                    .truncationMode(.tail)
            }
            
        }
    }
}
