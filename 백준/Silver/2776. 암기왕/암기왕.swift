let T = Int(readLine()!)!


for _ in 0..<T {
    let N = Int(readLine()!)!
    let nArr = readLine()!.split(separator: " ").map { Int($0)! }
    let M = Int(readLine()!)!
    let mArr = readLine()!.split(separator: " ").map { Int($0)! }
    
    let sortN = nArr.sorted()
    
    var results: [String] = []
    
    for m in mArr {
        var left = 0
        var right = N - 1
        var found = false
        
        while left <= right {
            let mid = left + (right - left) / 2
            if sortN[mid] == m {
                found = true
                break
            } else if sortN[mid] < m {
                left = mid + 1
            } else {
                right = mid - 1
            }
        }
        
        results.append(found ? "1" : "0")
    }
    
    print(results.joined(separator: "\n"))
}
