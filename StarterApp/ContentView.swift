import SwiftUI

struct ContentView: View {
    @StateObject private var viewModel = HomeViewModel()

    var body: some View {
        NavigationStack {
            VStack(spacing: 16) {
                Text(viewModel.greeting)
                    .font(.title)
                    .fontWeight(.semibold)

                Text("Build with SwiftUI, Swift Concurrency, and MVVM.")
                    .font(.body)
                    .foregroundStyle(.secondary)
                    .multilineTextAlignment(.center)

                Button("Refresh Greeting") {
                    Task {
                        await viewModel.refreshGreeting()
                    }
                }
                .buttonStyle(.borderedProminent)
                .accessibilityHint("Refreshes the greeting message")
            }
            .padding()
            .task {
                await viewModel.refreshGreeting()
            }
            .navigationTitle("Starter App")
        }
    }
}

#Preview {
    ContentView()
}
