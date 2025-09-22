let T = Int(readLine()!)!

let directions = [(-1,0), (1, 0), (0, -1), (0, 1)]

for _ in 0..<T {
    let mnk = readLine()!.split(separator: " ").map { Int($0)! }
    let M = mnk[0]
    let N = mnk[1]
    let K = mnk[2]

    var graph: [[Int]] = Array(repeating: Array(repeating: 0, count: M), count: N)

    for _ in 0..<K {
        let read = readLine()!.split(separator: " ").map { Int($0)! }
        let X = read[0]
        let Y = read[1]
        
        graph[Y][X] = 1
    }


    func bfs(sx: Int, sy: Int) {
        var queue: [(Int, Int)] = []
        var head = 0
        
        queue.append((sx, sy))
        graph[sy][sx] = 0
        
        while head < queue.count {
            let (x, y) = queue[head]
            head += 1
            
            for (dx, dy) in directions {
                let nx = x + dx
                let ny = y + dy
                
                guard nx < M, ny < N, nx >= 0, ny >= 0 else { continue }
                
                if (graph[ny][nx] == 1) {
                    graph[ny][nx] = 0
                    queue.append((nx, ny))

                }
            }
        }
    }


    var res = 0

    for y in 0..<N {
        for x in 0..<M {
            if (graph[y][x] == 1) {
                res += 1
                bfs(sx: x, sy: y)
            }
        }
    }

    print(res)

}
