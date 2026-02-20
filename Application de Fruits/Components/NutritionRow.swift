import SwiftUI

struct NutritionRow: View {
    let icon: String
       let title: String
       let value: String
       let color: Color
       
       var body: some View {
           HStack(alignment: .center) {
               Image(systemName: icon)
                   .foregroundColor(color)
                   .frame(width: 20)
               
               Text(title)
                   .foregroundColor(color)
                   .frame(width: 80, alignment: .leading)
               
               Spacer()
               
               Text(value)
                   .foregroundColor(.black)
                   .frame(alignment: .trailing)
               
           }
           .padding(8)
       }
}
