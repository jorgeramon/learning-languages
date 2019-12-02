defmodule FizzbuzzTest do
  use ExUnit.Case
  doctest Fizzbuzz

  test "should be 'Fizz' for multiples of 3" do
    Enum.each([3, 6, 9, 12, 18, 21, 24, 27, 33, 36], fn x -> 
      assert(Fizzbuzz.fizzbuzz(x) == "Fizz") 
    end)
  end

  test "should be 'Buzz' for multiples of 5" do
    Enum.each([5, 10, 20, 25, 35, 40, 50, 55, 70, 80], fn x -> 
      assert(Fizzbuzz.fizzbuzz(x) == "Buzz") 
    end)
  end

  test "should be 'FizzBuzz' for multiples of 3 and 5" do
    Enum.each([15, 30, 45, 60, 75, 90, 105, 120, 135, 150], fn x -> 
      assert(Fizzbuzz.fizzbuzz(x) == "FizzBuzz") 
    end)
  end
end
