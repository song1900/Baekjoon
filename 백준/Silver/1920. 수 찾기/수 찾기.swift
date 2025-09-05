let nCount = Int(readLine()!)!
var N = readLine()!.split(separator: " ").map { Int($0)! }
N.sort()

let mCount = Int(readLine()!)!
let M = readLine()!.split(separator: " ").map { Int($0)! }


var result = Array(repeating: 0, count: mCount)

for (idx, m) in M.enumerated() {
    
    
    var left = 0
    var right = nCount - 1
    
    while left <= right {
        
        let mid = (left + right) / 2
        
        if (N[mid] == m) {
            result[idx] = 1
            break
        }
        
        if (N[mid] > m) {
            right = mid - 1
            
        } else {
            left = mid + 1
        }
    }
    
}


result.forEach {
    print($0)
}
