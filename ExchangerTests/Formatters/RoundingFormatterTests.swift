import XCTest

class RoundingFormatterTests: XCTestCase {
    
    var formatter: RoundingFormatter!
    
    override func setUp() {
        super.setUp()
        
        let numberFormatter = NumberFormatter()
        numberFormatter.locale = Locale(identifier: "en_US")
        numberFormatter.minimumIntegerDigits = 1
        numberFormatter.maximumFractionDigits = 2
        
        formatter = RoundingFormatterImpl(numberFormatter: numberFormatter)
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testInputIsDecimal() {
        // Given
        let input = NSNumber(integerLiteral: Int(arc4random() % 100))
        // When
        let output = formatter.format(input)
        // Then
        XCTAssert(output == input.stringValue)
    }
    
    func testInputIsFloat() {
        // Given
        let input = NSNumber(floatLiteral: 12.3456)
        // When
        let output = formatter.format(input)
        // Then
        XCTAssert(output == "12.35")
    }
    
    func testInputIsFloatWithZerosAfterDot() {
        // Given
        let input = NSNumber(floatLiteral: 12.00)
        // When
        let output = formatter.format(input)
        // Then
        XCTAssert(output == "12")
    }
    
    func testInputIsLessThanOne() {
        // Given
        let input = NSNumber(floatLiteral: 0.5)
        // When
        let output = formatter.format(input)
        // Then
        XCTAssert(output == "0.5")
    }
    
}
