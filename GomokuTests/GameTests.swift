
import XCTest
@testable import Gomoku

class GameTests: XCTestCase {
    var game:Game!
    
    override func setUp() {
        super.setUp()
        game = Game()
    }
    
    override func tearDown() {
        super.tearDown()
    }

    func testHasMoves() {
        XCTAssertEqual(game.moves.count, 0)
    }
    
    func testFirstTurnIsX() {
        XCTAssertEqual(game.currentTurn, .X)
    }
}
