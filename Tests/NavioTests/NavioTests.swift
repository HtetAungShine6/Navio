import Testing
@testable import Navio

@available(iOS 16.0, *)
@Test func example() async throws {
    // Write your test here and use APIs like `#expect(...)` to check expected conditions.
    let nav = NavioCoordinator<String>()
    nav.push("profile")
    #expect(nav.path.count == 1)
    
    nav.pop()
    #expect(nav.path.count == 0)
}
