let line = readLine()!.split(separator: " ").map { Int($0)! }

let N = line[0]
let M = line[1]

var A = readLine()!.split(separator: " ").map { Int($0)! }


var start = 0
var end = 0
var sum = 0
var res = 0

while true {
    if sum >= M {
        if sum == M {
            res += 1
        }
        sum -= A[start]
        start += 1
    } else {
        if end == N {
            break
        }
        sum += A[end]
        end += 1
    }
}

if sum == M {
    res += 1
}

print(res)
