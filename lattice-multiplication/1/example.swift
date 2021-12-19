func latticeMultiplication(_ num1: Int, _ num2: Int) -> Int {
  // Set digits
  var digits1 = String(num1).map { Int($0)! }.reversed()
  var digits2 = String(num2).map { Int($0)! }.reversed()
  // Track result
  var result = 0
  var placeValue = 1
  // Multiply
  for digit1 in digits1 {
    for digit2 in digits2 {
      result += (digit1 + digit2) * placeValue
      placeValue *= 10
    }
    for 1..<(num2.count - 1) {
      placeValue /= 10
    }
  }
  return result
}
