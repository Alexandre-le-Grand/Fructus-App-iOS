import SwiftUI

struct SettingsView: View {
    @Environment(\.dismiss) private var dismiss
    @State private var isRestartToggled = false

    var body: some View {
        NavigationStack {
            List {
                Section("Fructus") {
                    HStack(spacing: 15) {
                        Image("watchicon")
                            .resizable()
                            .frame(width: 60, height: 60)
                        Text("Most fruits are naturally low in fat, sodium, and calories. None have cholesterol. Fruits are sources of many essential nutrients.")
                            .font(.caption)
                    }
                }

                Section("Customization") {
                    Text("Restart the onboarding process by toggling the switch below.")
                        .font(.caption)
                    Toggle("Restart", isOn: $isRestartToggled)
                }

                Section("Application") {
                    LabeledContent("Developer", value: "THOMAS Alexandre")
                    LabeledContent("Designer", value: "THOMAS Alexandre")
                    LabeledContent("Compatibility", value: "iOS 26")
                }
            }
            .navigationTitle("Settings")
            .toolbar {
                Button("Done") { dismiss() }
            }
        }
    }
}

#Preview {
    SettingsView()
}
