let line01 = readLine()!.split(separator: " ").map { Int($0)! }
let N = line01[0], M = line01[1], V = line01[2]

var graph = Array(repeating: [Int](), count: N + 1)


for _ in 0..<M {
    let ab = readLine()!.split(separator: " ").map { Int($0)! }
    graph[ab[0]].append(ab[1])
    graph[ab[1]].append(ab[0])
}


for i in 1...N {
    graph[i].sort()
}

var visited = Array(repeating: false, count: N + 1)


var dfsRes: [Int] = []


func dfs(_ v: Int) {
    visited[v] = true
    dfsRes.append(v)
    
    for nx in graph[v] where !visited[nx] {
        dfs(nx)
    }
}

dfs(V)
print(dfsRes.map(String.init).joined(separator: " "))




func bfs(_ v: Int) -> String {
    var visited = Array(repeating: false, count: N + 1)
    var res: [Int] = []
    
    var queue: [Int] = [v]
    var idx = 0
    visited[v] = true
    
    
    
    while idx < queue.count {
        let cur = queue[idx]

        idx += 1
        res.append(cur)
        
        for n in graph[cur] where !visited[n] {
            visited[n] = true
            queue.append(n)
        }
    }
    
    return res.map(String.init).joined(separator: " ")
}


print(bfs(V))

