//
//  main.swift
//  1l_ФИ
//
//  Created by Khakim on 27.12.2021.
//

import Foundation

// 1
let number = 9
evenOrOdd(number: number) ? print("Even") : print("Odd")

func evenOrOdd(number: Int) -> Bool{
    if number % 2 == 0 {
        return true
    }
    return false
}
// 2
let number2 = 7

devisibleByThree(number: number2) ? print("Divisible") : print("Can't devide by 3")

func devisibleByThree(number: Int) -> Bool{
    if number % 3 == 0 {
        return true
    }
    return false;
}

// 3

var array: [Int] = []

for index in 0...100{
    array.append(index)
}
print(array)
// 4

var filtered = array.filter {$0 % 2 != 0 && $0 % 3 == 0}
print(filtered)

//5

var fibbonaciNumbers: [Int] = [0, 1]

addFibbonaciNumbers(fibbonaciNumbers)

func addFibbonaciNumbers(_ number: [Int]){
    var number2 = number
    let lastIndex = number2.count
    for num in lastIndex...lastIndex + 50{
        number2.append(number2[num-2] + number2[num-1])
    }
    print(number2)
}

//6

func prime (num: Int) -> Bool {
    for i in 2..<num {
        if num % i == 0 {
            return false
        }
    }
    return true
}
func primeArray() -> [Int] {
    var array: [Int] = []
    var i = 2
    while array.count < 100 {
        if prime(num: i) {
            array.append(i)
        }
        i += 1
    }

    return array
}
print(primeArray())
