let line = readLine()!.split(separator: " ").map { Int($0)! }


let N = line[0]
let X = line[1]

let arr = readLine()!.split(separator: " ").map { Int($0)! }


var curr = 0
(0..<X).forEach {
    curr += arr[$0]
}

var maxSum = curr
var count = 1


for i in X..<N {
    curr += arr[i] - arr[i-X]
    if curr > maxSum {
        maxSum = curr
        count = 1
    } else if curr == maxSum {
        count += 1
    }
}

if maxSum == 0 {
    print("SAD")
} else {
    print(maxSum)
    print(count)
}