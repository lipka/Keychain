import XCTest
@testable import Keychain

final class KeychainTests: XCTestCase {
    func testExample() {
        Keychain.set(password: "password", account: "account", service: "service")
        XCTAssertEqual(Keychain.get(account: "account", service: "service"), "password")
        XCTAssertNil(Keychain.get(account: "account", service: "service2"))
        Keychain.delete(account: "account", service: "service")
        XCTAssertNil(Keychain.get(account: "account", service: "service"))
    }
}
