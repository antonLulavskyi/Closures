import UIKit

func calculete(n1: Int, n2: Int, operation: (Int, Int) -> Int) -> Int {
    return operation(n1, n2)
}

func add(num1: Int, num2: Int) -> Int {
    return num1 + num2
}

func multiply(n1: Int, n2: Int) -> Int {
    return n1 * n2
}

calculete(n1: 2, n2: 2, operation: add)
calculete(n1: 2, n2: 2, operation: multiply)

// Closures


// Full version
calculete(n1: 2, n2: 2, operation: {(n1: Int, n2: Int) -> Int in
    return n1 * n2
})

// Without data types
calculete(n1: 2, n2: 2, operation: {(n1, n2) -> Int in
    return n1 * n2
})

// Without return type
calculete(n1: 2, n2: 2, operation: {(n1, n2) in
    return n1 * n2
})

// Without return key
calculete(n1: 2, n2: 2, operation: {(n1, n2) in n1 * n2})

// With anonamus param. name
calculete(n1: 2, n2: 2, operation: {$0 * $1})

// Using trailing clousure, as last param. name
calculete(n1: 2, n2: 2) {$0 * $1}



// Closures example

let array = [6,2,4,8,1]

func addOne(n1: Int) -> Int {
    return n1 + 1
}

array.map(addOne)

// Symply version

print(array.map{$0 + 1})


let newArray = array.map{"\($0)"}
print(newArray)
