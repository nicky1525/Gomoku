
import XCTest
@testable import Gomoku

class GameModelTests: XCTestCase {
    var game:GameModel!
    var move:Move!
    
    override func setUp() {
        super.setUp()
        // This is our initial model
        move = Move(coordinates: Coordinates(x: 1, y: 3), player: .White)
        game = GameModel(moves: [move], currentTurn: .Black)
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func test_Init_SetsMoves() {
        XCTAssertTrue(game.moves.contains(where: {$0.player == .White && $0.coordinates.x == 1 && $0.coordinates.y == 3}))
    }

    func testHasMoves() {
        XCTAssertEqual(game.moves.count, 1)
    }
    
    func testFirstTurnIsWhite() {
        XCTAssertEqual(game.currentTurn, .Black)
    }
}
