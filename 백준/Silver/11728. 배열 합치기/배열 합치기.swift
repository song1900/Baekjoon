let line = readLine()!.split(separator: " ").map { Int($0)! }

let N = line[0]
let M = line[1]

let A = readLine()!.split(separator: " ").map { Int($0)! }
let B = readLine()!.split(separator: " ").map { Int($0)! }



var i = 0
var j = 0

var res: [Int] = []

while i < N && j < M {
    
    if A[i] <= B[j] {
        res.append(A[i])
        i += 1
    } else {
        res.append(B[j])
        j += 1
    }
}


if i < N {
    res.append(contentsOf: A[i...])
}

if j < M {
    res.append(contentsOf: B[j...])
}

print(res.map { String($0) }.joined(separator: " "))
