
import XCTest
@testable import Gomoku

class MoveTests: XCTestCase {
    var move: Move!
    
    override func setUp() {
        super.setUp()
        move = Move(coordinates:Coordinates(x:5, y:6),
                    player: .Black)
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testMove_Init_SetsCoordinates() {
        XCTAssertEqual(move.coordinates.x, 5)
        XCTAssertEqual(move.coordinates.y, 6)
    }

    func testMove_Init_SetsPlayer() {
        XCTAssertEqual(move.player, .Black)
    }
}
