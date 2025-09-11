let N = Int(readLine()!)!
let nums = readLine()!.split(separator: " ").map({ Int($0)! })


let M = Double(nums.max()!)

var sum: Double = 0

for n in nums {
    sum += Double(n) / M * 100
}

print(sum / Double(N))
