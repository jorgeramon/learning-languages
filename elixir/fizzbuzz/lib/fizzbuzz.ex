defmodule Fizzbuzz do

  def fizzbuzz(number) do
    cond do
      rem(number, 3) == 0 && rem(number, 5) == 0 -> "FizzBuzz"
      rem(number, 3) == 0 -> "Fizz"
      rem(number, 5) == 0 -> "Buzz"
      true -> nil
    end
  end
end
