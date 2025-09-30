let line = readLine()!.split(separator: " ").map { Int($0)! }

let n = line[0]
let m = line[1]

 
let tArr: [Int] = readLine()!.split(separator: " ").map { Int($0)! }


var cur = 0

for i in 0..<m {
    cur += tArr[i]
}

var answer = cur

for i in m..<n {
    cur += tArr[i]
    cur -= tArr[i-m]
    
    answer = max(cur, answer)
}


print(answer)
