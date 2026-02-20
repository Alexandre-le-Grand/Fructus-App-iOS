import SwiftUI

struct FruitListView: View {
    // MARK: - PROPERTIES
    private let fruits: [Fruit] = Fruit.fruites
    @State private var showSettings = false
    
    // Configuration de la grille (2 colonnes adaptatives)
    private let columnLayout = [
        GridItem(.flexible(), spacing: 16),
        GridItem(.flexible(), spacing: 16)
    ]
    
    // MARK: - BODY
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVGrid(columns: columnLayout, spacing: 16) {
                    ForEach(fruits) { fruit in
                        NavigationLink(destination: FruitDetailView(fruit: fruit)) {
                            FruitCardItem(fruit: fruit)
                        }
                    }
                }
                .padding(16)
            }
            .background(Color(UIColor.systemGroupedBackground))
            .navigationTitle("Exploration")
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    Button(action: {
                        showSettings.toggle()
                    }) {
                        Image(systemName: "line.3.horizontal.decrease.circle.fill")
                            .symbolRenderingMode(.hierarchical)
                            .font(.title2)
                            .foregroundColor(.accentColor)
                    }
                }
            }
            .sheet(isPresented: $showSettings) {
                SettingsView()
            }
        }
    }
}

struct FruitCardItem: View {
    let fruit: Fruit
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            ZStack {
                LinearGradient(
                    colors: fruit.gradientColors,
                    startPoint: .topLeading,
                    endPoint: .bottomTrailing
                )
                
                Image(fruit.image)
                    .resizable()
                    .scaledToFit()
                    .padding(20)
                    .shadow(color: .black.opacity(0.15), radius: 8, x: 6, y: 8)
            }
            .frame(height: 150)
            .clipShape(RoundedRectangle(cornerRadius: 20))
            
            VStack(alignment: .leading, spacing: 4) {
                Text(fruit.title)
                    .font(.system(.headline, design: .rounded))
                    .foregroundColor(.primary)
                
                Text(fruit.headline)
                    .font(.caption)
                    .foregroundColor(.secondary)
                    .lineLimit(2)
                    .multilineTextAlignment(.leading)
            }
            .padding(.vertical, 12)
            .padding(.horizontal, 8)
        }
        .background(Color.white)
        .cornerRadius(20)
        .shadow(color: Color.black.opacity(0.05), radius: 5, x: 0, y: 5)
    }
}

#Preview {
    FruitListView()
}
