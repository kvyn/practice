import Foundation

func fib(n: Int) -> Int {
    if n < 2 {
        return n
    }
    return fib(n: n - 2) + fib(n: n - 1)
}

let start = Date()

print("result: \(fib(n: 40))")

let elapsed = Date().timeIntervalSince(start)

print("time: \(elapsed) sec")