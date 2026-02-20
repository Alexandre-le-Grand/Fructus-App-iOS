import SwiftUI

struct WelcomeTabContent: View {
    let item: Fruit
    @Binding var isActive:Bool
    
    var body: some View {
        VStack() {
            
            ImageLarge(imageName: item.image)
            
            
            TextTitle(
                title: item.title,
                description: item.description,
                color: .white
            )
            ActionButton(title: "Start", action: {
                isActive = true
            })           
        }
    }
}
