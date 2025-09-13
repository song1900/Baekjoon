
let firstLine = readLine()!.split(separator: " ").map { Int($0)! }

let N = firstLine[0] // 세로
let M = firstLine[1] // 가로
let K = firstLine[2] // 동아리원 수


var res = 0

for f in 0..<N {
    let line = readLine()!.map { Int(String($0))! }
    var left = 0
    while left <= (M-K) {
        if !(line[left..<(left+K)].contains(1)) {
            
            res += 1
        }

        left += 1
    }
    
}


print(res)
