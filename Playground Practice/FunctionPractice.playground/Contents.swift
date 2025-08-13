import UIKit

func sayHello() {
    var greeting = "Hello, playground"
    print(greeting)
}

//Call the function to invoke it!

sayHello()

func sayHello(m:String) {
    print(m)
}

sayHello(m: "Hello World!")

func doAdd(firstNum a:Int, secondNum b:Int) -> Int {
    var c = a + b
    return c
}

let result = doAdd(firstNum: 3, secondNum: 2)
print(result)

func doAdd(_ a:Int, _ b:Int, _ c:Int) -> Int {
    var d = a + b + c
    return d
}
let answer = doAdd(1,2,3)
print(answer)

func doAdd(a:Int, b:Int) -> Int {
    var c = a + b
    return c
}
let finalAnswer = doAdd(a: 10, b: 20)
print(finalAnswer)
