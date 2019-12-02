package fizzbuzz

func FizzBuzz(number int) (string, bool) {
	if number%3 == 0 && number%5 == 0 {
		return "FizzBuzz", true
	} else if number%3 == 0 {
		return "Fizz", true
	} else if number%5 == 0 {
		return "Buzz", true
	} else {
		return nil, false
	}
}