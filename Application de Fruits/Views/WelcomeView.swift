import SwiftUI

struct WelcomeView: View {
    private let items: [Fruit] = Fruit.fruites
    @Binding var selectedTab: Int
    @State private var isActive = false
    
    var body: some View {
        NavigationStack {
            ZStack {
                items[selectedTab].gradientColors[1]
                    .ignoresSafeArea()
                
                LinearGradient(
                    colors: [.white.opacity(0.3), .clear, .black.opacity(0.3)],
                    startPoint: .topLeading,
                    endPoint: .bottomTrailing
                )
                .ignoresSafeArea()

                VStack(spacing: 0) {
                    TabView(selection: $selectedTab) {
                        ForEach(0..<items.count, id: \.self) { index in
                            WelcomeTabContent(item: items[index], isActive: $isActive)
                                .tag(index)
                                .onTapGesture(count: 2) {
                                    isActive = true
                                }
                        }
                    }
                    .tabViewStyle(.page(indexDisplayMode: .never))
                    
                    VStack(spacing: 12) {
                        HStack(spacing: 5) {
                            ForEach(0..<items.count, id: \.self) { index in
                                Circle()
                                    .fill(selectedTab == index ? .white : .white.opacity(0.3))
                                    .frame(width: 6, height: 6)
                                    .scaleEffect(selectedTab == index ? 1.5 : 1.0)
                                    .animation(.spring(), value: selectedTab)
                            }
                        }
                        
                    }
                    .padding(.bottom, 40)
                }
            }
            .navigationDestination(isPresented: $isActive) {
                FruitListView()
            }
        }
    }
}
