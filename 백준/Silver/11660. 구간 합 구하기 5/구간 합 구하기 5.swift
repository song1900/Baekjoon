let nm = readLine()!.split(separator: " ").map { Int($0)! }
let N = nm[0]
let M = nm[1]


var board = Array(repeating: Array(repeating: 0, count: N + 1), count: N + 1)

for i in 1...N {
    let row = readLine()!.split(separator: " ").map { Int($0)! }
    for j in 1...N {
        board[i][j] = row[j - 1]
    }
}


var sums = Array(repeating: Array(repeating: 0, count: N + 1), count: N + 1)
for i in 1...N {
    for j in 1...N {
        sums[i][j] = sums[i - 1][j] + sums[i][j - 1] - sums[i - 1][j - 1] + board[i][j]
    }
}

for _ in 0..<M {
    let read = readLine()!.split(separator: " ").map { Int($0)! }
    let x1 = read[0]
    let y1 = read[1]
    let x2 = read[2]
    let y2 = read[3]
    
    
    let res = sums[x2][y2] - sums[x1 - 1][y2] - sums[x2][y1 - 1] + sums[x1 - 1][y1 - 1]
    print(res)
}
