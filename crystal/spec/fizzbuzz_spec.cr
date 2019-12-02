require "spec"
require "../fizzbuzz"

include FizzBuzz

describe "FizzBuzz" do 
    it "should be 'Fizz' for multiples of 3" do
        [3, 6, 9, 12, 18, 21, 24, 27, 33, 36].each do |number|
            result = fizzbuzz(number)
            result.should eq("Fizz")
        end
    end

    it "should be 'Buzz' for multiples of 5" do
        [5, 10, 20, 25, 35, 40, 50, 55, 70, 80].each do |number|
            result = fizzbuzz(number)
            result.should eq("Buzz")
        end
    end

    it "should be 'FizzBuzz' for multiples of 3 and 5" do
        [15, 30, 45, 60, 75, 90, 105, 120, 135, 150].each do |number|
            result = fizzbuzz(number)
            result.should eq("FizzBuzz")
        end
    end
end