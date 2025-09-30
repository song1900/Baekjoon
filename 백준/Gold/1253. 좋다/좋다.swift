let N = Int(readLine()!)!
let arr = readLine()!.split(separator: " ").map { Int($0)! }.sorted()



var res = 0

for a in 0..<N {
    let t = arr[a]
    var l = 0
    var r = N - 1
    
    while l < r {
        if l == a {
            l += 1
            continue
        }
        if r == a {
            r -= 1
            continue
        }
        
        let sum = arr[l] + arr[r]
        if sum == t {
            res += 1
            break
        } else if sum < t {
            l += 1
        } else {
            r -= 1
        }
        
    }
}

print(res)
