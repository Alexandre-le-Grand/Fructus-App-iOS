import SwiftUI

struct WhiteThumbToggleStyle: ToggleStyle {
    func makeBody(configuration: Configuration) -> some View {
        HStack {
            configuration.label
                .font(.headline)
                .foregroundColor(.gray)
                .fontWeight(.bold)

            Spacer()

            ZStack {
                RoundedRectangle(cornerRadius: 16)
                    .fill(Color.gray.opacity(0.3)) 
                    .frame(width: 50, height: 30)

                Circle()
                    .fill(Color.white)
                    .frame(width: 24, height: 24)
                    .offset(x: configuration.isOn ? 10 : -10)
            }
            .onTapGesture {
                withAnimation {
                    configuration.isOn.toggle()
                }
            }
        }
        .padding()
        .background(Color.white)
        .cornerRadius(8)
    }
}

