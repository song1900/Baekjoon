let N = Int(readLine()!)!
var map: [[Int]] = []
for _ in 0..<N {
    map.append(readLine()!.split(separator: " ").map { Int($0)! })
}


var visited = Array(repeating: Array(repeating: false, count: N), count: N)

func dfs(x: Int, y: Int) -> Bool {
    
    if x >= N || y >= N {
        return false
    }
    
    if visited[x][y] {
        return false
    }
    
    let k = map[x][y]
    
    if k == -1 {
        return true
    }
    
    visited[x][y] = true
    
    return dfs(x: x, y: y + k) || dfs(x: x + k, y: y)
}


if dfs(x: 0, y: 0) {
    print("HaruHaru")
} else {
    print("Hing")
}
