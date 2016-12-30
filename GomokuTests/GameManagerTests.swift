
import XCTest

@testable import Gomoku
class GameManagerTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testCanAddMoves() {
        let move = Move(coordinates: Coordinates(x: 1, y: 2), player: .Black)
        
        let manager = GameManager()
        let newModel = manager.addMove(move: move, model: defaultGameModel)
        
        XCTAssertTrue(newModel.moves.contains(where: {$0.player == .Black && $0.coordinates.x == 1 && $0.coordinates.y == 2}))
    }
}
