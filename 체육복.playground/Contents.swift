import Foundation

func solution(_ n:Int, _ lost:[Int], _ reserve:[Int]) -> Int {
    var lost = lost.filter({!reserve.contains($0)})
    var reserve = reserve.filter({!lost.contains($0)})
    var ans = n - lost.count
    print(lost,reserve)
    for i in 0..<lost.count {
        var has: Int?
        for j in 0..<reserve.count {
            if lost[i] == reserve[j] + 1 || lost[i] == reserve[j] - 1{
                has = j
                break
            }
        }
        if let index = has {
            reserve.remove(at: index)
            ans += 1
        }
    }
    return ans
}
