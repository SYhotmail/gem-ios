import Testing
import Foundation
import Primitives
import BigInt

final class BigNumberFormatterTests {

    let formatter = BigNumberFormatter.standard
    let formatterRU_UA = BigNumberFormatter(locale: Locale(identifier: "ru_UA"))

    @Test
    func testFromString() {
        #expect(throws: Never.self) {
            let result = try formatter.number(from: "0.00012317", decimals: 8)
            #expect(result == 12317)
        }
    }

    @Test
    func testFromNumber() {
        #expect(formatter.number(from: 100_000, decimals: 7) == 1_000_000_000_000)
        #expect(formatter.number(from: 10, decimals: 0) == 10)
    }

    @Test
    func testFromNumberEULocalization() {
        #expect(throws: Never.self) {
            let result = try formatterRU_UA.number(from: "0,12317", decimals: 8)
            #expect(result == 12317000)
        }
    }

    @Test
    func testFromBigInt() {
        #expect(formatter.string(from: BigInt(10000), decimals: 2) == "100")
    }
}
