let N = Int(readLine()!)! // 재료의 개수
let M = Int(readLine()!)! // 만드는데 필요한 수
let nums = readLine()!.split(separator: " ").map { Int($0)! } // 재료의 고유 번호




var left = 0
var count = 0

var setNums = Set(nums)



for (idx, num) in nums.enumerated() {
    var right = N - 1
    
    if !setNums.contains(num) { continue }

    while idx < right {
        
        if (num + nums[right]) == M {
            setNums.remove(num)
            setNums.remove(nums[right])
            count += 1
        }
        
        right -= 1
    }
}

print(count)