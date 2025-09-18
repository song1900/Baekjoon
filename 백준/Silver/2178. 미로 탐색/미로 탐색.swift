let firstLine = readLine()!.split(separator: " ").map { Int($0)! }

let N = firstLine[0] // 4
let M = firstLine[1] // 6

var map: [[Int]] = []


for _ in 0..<N {
    map.append(readLine()!.map({ String($0) }).map({ Int($0)! }))
}

var visited = Array(repeating: Array(repeating: false, count: M), count: N)
var distance = Array(repeating: Array(repeating: 0, count: M), count: N)


let dx = [0, 0, -1, 1]
let dy = [-1, 1, 0, 0]

func bfs(startX: Int, startY: Int) {
    var queue: [(Int, Int)] = []
    queue.append((startX, startY))
    visited[startX][startY] = true
    distance[startX][startY] = 1

    while !queue.isEmpty {
        let (x, y) = queue.removeFirst()

        for dir in 0..<4 {
            let nx = x + dx[dir]
            let ny = y + dy[dir]

            if nx >= 0 && ny >= 0 && nx < N && ny < M {
                if map[nx][ny] == 1 && !visited[nx][ny] {
                    visited[nx][ny] = true
                    distance[nx][ny] = distance[x][y] + 1
                    queue.append((nx, ny))
                }
            }
        }
    }
}

bfs(startX: 0, startY: 0)
print(distance[N-1][M-1])
