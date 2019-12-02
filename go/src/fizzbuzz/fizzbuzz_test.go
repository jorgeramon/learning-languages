package fizzbuzz

import "testing"

func TestFizzCases(t *testing.T) {
	cases := []int{3, 6, 9, 12, 18, 21, 24, 27, 33, 36, 39}

	for _, n := range cases {
		result, _ := FizzBuzz(n)
		if result != "Fizz" {
			t.Errorf("Error, %v should be 'Fizz'", n)
		}
	}
}

func TestBuzzCases(t *testing.T) {
	cases := []int{5, 10, 20, 25, 35, 40, 50, 55, 70, 80}

	for _, n := range cases {
		result, _ := FizzBuzz(n)
		if result != "Buzz" {
			t.Errorf("Error, %v should be 'Buzz'", n)
		}
	}
}

func TestFizzBuzzCases(t *testing.T) {
	cases := []int{15, 30, 45, 60, 75, 90, 105, 120, 135, 150}

	for _, n := range cases {
		result, _ := FizzBuzz(n)
		if result != "FizzBuzz" {
			t.Errorf("Error, %v should be 'FizzBuzz'", n)
		}
	}
}