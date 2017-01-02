
import XCTest

@testable import Gomoku
class GameManagerTests: XCTestCase {
    
    var manager:GameManager!
    
    override func setUp() {
        super.setUp()
        manager = GameManager()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testCanAddMoves() {
        let move = Move(coordinates: Coordinates(x: 1, y: 2), player: .Black)
        
        let newModel = manager.addMove(move, defaultGameModel)
        
        XCTAssertTrue(newModel.moves.contains(where: {$0.player == .Black && $0.coordinates.x == 1 && $0.coordinates.y == 2}))
    }
    
    func testWinnerIsBlack_CentralMove() {
        let moves = [
            Move(coordinates: (0,0), player: .Black),
            Move(coordinates: (0,1), player: .Black),
            Move(coordinates: (0,3), player: .Black),
            Move(coordinates: (0,4), player: .Black)
        ]
        let winningMove =
            Move(coordinates: (0,2), player: .Black)

        XCTAssert(manager.checkForWinner(winningMove, moves) == .Black)
    }
    
    func testWinnerIsWhite_BottomMove() {
        let moves = [
            Move(coordinates: (0,0), player: .White),
            Move(coordinates: (0,1), player: .White),
            Move(coordinates: (0,2), player: .White),
            Move(coordinates: (0,3), player: .White)
        ]
        let winningMove =
            Move(coordinates: (0,4), player: .White)
        
        XCTAssert(manager.checkForWinner(winningMove, moves) == .White)
    }
    
    func testWinnerIsWhite_TopMove() {
        let moves = [
            Move(coordinates: (0,4), player: .White),
            Move(coordinates: (0,1), player: .White),
            Move(coordinates: (0,2), player: .White),
            Move(coordinates: (0,3), player: .White)
        ]
        let winningMove =
            Move(coordinates: (0,0), player: .White)
        
        XCTAssert(manager.checkForWinner(winningMove, moves) == .White)
    }

    func testWinnerIsWhite_TopLeftMove() {
        let moves = [
            Move(coordinates: (1,1), player: .White),
            Move(coordinates: (2,2), player: .White),
            Move(coordinates: (3,3), player: .White),
            Move(coordinates: (4,4), player: .White)
        ]
        let winningMove =
            Move(coordinates: (0,0), player: .White)
        
        XCTAssert(manager.checkForWinner(winningMove, moves) == .White)
    }

    func testWinnerIsWhite_BottomRightMove() {
        let moves = [
            Move(coordinates: (1,1), player: .White),
            Move(coordinates: (2,2), player: .White),
            Move(coordinates: (3,3), player: .White),
            Move(coordinates: (4,4), player: .White)
        ]
        let winningMove =
            Move(coordinates: (5,5), player: .White)
        
        XCTAssert(manager.checkForWinner(winningMove, moves) == .White)
    }

    func testWinnerIsWhite_TopRightMove() {
        let moves = [
            Move(coordinates: (4,0), player: .White),
            Move(coordinates: (3,1), player: .White),
            Move(coordinates: (2,2), player: .White),
            Move(coordinates: (1,3), player: .White)
        ]
        let winningMove =
            Move(coordinates: (0,4), player: .White)
        
        XCTAssert(manager.checkForWinner(winningMove, moves) == .White)
    }

    func testWinnerIsWhite_BottomLeftMove() {
        let moves = [
            Move(coordinates: (0,4), player: .White),
            Move(coordinates: (3,1), player: .White),
            Move(coordinates: (2,2), player: .White),
            Move(coordinates: (1,3), player: .White)
        ]
        let winningMove =
            Move(coordinates: (4,0), player: .White)
        
        XCTAssert(manager.checkForWinner(winningMove, moves) == .White)
    }
    
    func testWinnerIsWhite_InnerMove() {
        let moves = [
            Move(coordinates: (0,4), player: .White),
            Move(coordinates: (4,0), player: .White),
            Move(coordinates: (2,2), player: .White),
            Move(coordinates: (1,3), player: .White)
        ]
        let winningMove =
            Move(coordinates: (3,1), player: .White)
        
        XCTAssert(manager.checkForWinner(winningMove, moves) == .White)
    }
}
