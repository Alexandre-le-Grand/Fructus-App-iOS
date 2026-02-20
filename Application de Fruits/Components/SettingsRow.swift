import SwiftUI

struct SettingsRow: View {
    let title: String
    let value: String
    var grayedOut: Bool = false
    
    var body: some View {
        HStack {
            grayedOut ? Text(title).foregroundColor(.secondary) : Text(title)
            Spacer()
            Text(value)
        }
        Divider()
    }
}
