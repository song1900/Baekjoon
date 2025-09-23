let N = Int(readLine()!)!

var start = 1
var end = 1
var sum = 1
 
var res = 0


while end <= N {

    
    if sum == N {
        res += 1
        sum -= start
        start += 1
        
        
    } else if sum < N {
        end += 1
        sum += end
        
        
    } else {
        sum -= start
        start += 1
    }

}

print(res)