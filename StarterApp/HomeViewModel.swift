import Foundation

@MainActor
final class HomeViewModel: ObservableObject {
    @Published private(set) var greeting = "Welcome"

    func refreshGreeting() async {
        greeting = "Hello! It's \(Date().formatted(date: .abbreviated, time: .shortened))"
    }
}
