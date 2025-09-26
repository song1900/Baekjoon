let line = readLine()!.split(separator: " ").map { Int($0)! }

let N = line[0]
let K = line[1]
let B = line[2]


var array = Array(repeating: 0, count: N)
for _ in 0..<B {
    let read = Int(readLine()!)!
    array[read-1] = 1
}


var cur = 0
for i in 0..<K {
    cur += array[i]
}

var res = cur

for r in K..<N {
    cur += array[r]
    cur -= array[r - K]
    
    res = min(res, cur)
}
print(res)