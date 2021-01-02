import Foundation

func solution(_ board:[[Int]], _ moves:[Int]) -> Int {
    var stack : [Int] = []
    var board = board
    var ans : Int = 0

    for i in moves{
        for j in 0..<board.count{
            if board[j][i-1] != 0{
                if stack.count > 0 && stack.last == board[j][i-1]{
                    ans += 2
                    stack.popLast()
                } else {
                    stack.append(board[j][i-1])
                }
                board[j][i-1] = 0
                break
            }
        }
    }
    return ans
}
