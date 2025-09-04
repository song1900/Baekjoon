let firstLine = readLine()!.split(separator: " ").map { Int($0)! }
let S = firstLine[0]
let P = firstLine[1]

let dnaStr = readLine()!

let condition = readLine()!.split(separator: " ").map { Int($0)! }


let dna = Array(dnaStr)

@inline(__always)
func idx(_ b: Character) -> Int {
    switch b {
    case "A": return 0
    case "C": return 1
    case "G": return 2
    default: return 3 // T
    }
}


var cnt = [0, 0, 0, 0]

for i in 0..<P {
    cnt[idx(dna[i])] += 1
}


@inline(__always)
func isValid() -> Bool {
    for i in 0..<cnt.count {
        if cnt[i] < condition[i] {
            return false
        }
    }
    return true
}

var res = 0

if (isValid()) {
    res += 1
}

if (S > P) {
    for r in P..<S {
        let l = r - P
        cnt[idx(dna[l])] -= 1
        cnt[idx(dna[r])] += 1
        if (isValid()) {
            res += 1
        }
    }
}


print(res)
