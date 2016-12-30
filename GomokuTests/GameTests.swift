
import XCTest
@testable import Gomoku

class GameTests: XCTestCase {
    var game:GameModel!
    
    override func setUp() {
        super.setUp()
        game = GameModel()
    }
    
    override func tearDown() {
        super.tearDown()
    }

    func testHasMoves() {
        XCTAssertEqual(game.moves.count, 0)
    }
    
    func testFirstTurnIsWhite() {
        XCTAssertEqual(game.currentTurn, .White)
    }
}
