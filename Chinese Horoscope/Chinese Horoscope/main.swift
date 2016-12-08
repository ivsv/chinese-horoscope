import Foundation

enum YearError: Error {
  case IncorrectData
}

func defineColorAndAnimalIn(_ year: inout Int?) throws {
  let animals = ["Monky", "Cock", "Dog", "Boar", "Rat", "Bull", "Tiger", "Rabbit", "Dragon", "Snake", "Horse", "Goat"]
  let colors = ["White", "Blue", "Green", "Red", "Yellow"]
  
  guard year! > 999 && year! < 10_000 else {
    throw YearError.IncorrectData
  }
  
  let animal = year! % 12
  let color  = year! % 10 / 2
  
  print("\(colors[color]) \(animals[animal])")
}

print("Hello! Enter the year: YYYY")
var year = Int(readLine()!)

do {
  try defineColorAndAnimalIn(&year)
} catch YearError.IncorrectData {
  print("Incorrect Data!")
}
