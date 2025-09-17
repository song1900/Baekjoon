
let firstLine = readLine()!.split(separator: " ").map { Int($0)! }

let N = firstLine[0]
let M = firstLine[1]

var graph: [[Int]] = []

for _ in 0..<N {
    graph.append(readLine()!.split(separator: " ").map { Int($0)! })
}

let A = Int(readLine()!)!





var sum: [Int] = []

for m in 0..<M {
    var cs = 0
    for n in 0..<N {
        cs += graph[n][m]
    }
    sum.append(cs)
}

var window = 0

for r in 0..<A {
    window += sum[r]
}

var res = window


for j in A..<M {
    window += sum[j] - sum[j - A]
    res = max(res, window)
}

print(res)
