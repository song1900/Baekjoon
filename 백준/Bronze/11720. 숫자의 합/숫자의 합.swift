let n = Int(readLine()!)!   
let numbers = readLine()!     

var sum = 0
for ch in numbers {
    sum += Int(String(ch))!
}

print(sum)