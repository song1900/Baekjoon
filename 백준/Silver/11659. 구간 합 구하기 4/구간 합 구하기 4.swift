let firstLine = readLine()!.split(separator: " ").map { Int($0)! }

let N = firstLine[0]
let M = firstLine[1]

let ns = readLine()!.split(separator: " ").map { Int($0)! }




var sums: [Int] = [ns[0]]

for i in 1..<N {
    let sum = sums[i-1] + ns[i]
    sums.append(sum)
}

for _ in 0..<M {
    let read = readLine()!.split(separator: " ").map { Int($0)! }
    
    let i = read[0] - 1
    let j = read[1] - 1
    
    if i < 1{
        print(sums[j])
    } else {
        print(sums[j] - sums[i-1])
    }
}


