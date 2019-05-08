import Quick
import Nimble
@testable import Fakery

final class CurrencySpec: QuickSpec {
  override func spec() {
    describe("Address") {
      var currency: Currency!
     
      beforeEach {
        let parser = Parser(locale: "en-TEST")
        currency = Currency(parser: parser)
      }
      
      describe("#currencyCode") {
        it("returns the correct text") {
          let code = currency.code()
          expect(code).to(equal("EUR"))
        }
      }
    }
  }
}
