let numbers = [1, 2, 3, 4, 5]

let evenNumbers = numbers.filter { $0 % 2 == 0 }

print(evenNumbers) // Output: [2, 4]

//To handle the edge case of an empty array
let emptyNumbers: [Int] = []
let filteredEmptyNumbers = emptyNumbers.filter { $0 % 2 == 0 }
print(filteredEmptyNumbers) //Output: []

//Alternatively, use a guard statement to prevent unexpected results when dealing with empty arrays.
func filterEvenNumbers(numbers: [Int]) -> [Int] {
    guard !numbers.isEmpty else { return [] }
    return numbers.filter { $0 % 2 == 0 }
}

let evenNumbers2 = filterEvenNumbers(numbers: [1,3,5])
print(evenNumbers2) //Output: []

let evenNumbers3 = filterEvenNumbers(numbers: numbers)
print(evenNumbers3) //Output: [2,4]