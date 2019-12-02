import org.junit.jupiter.api.Assertions.assertEquals
import org.junit.jupiter.api.DisplayName
import org.junit.jupiter.api.Test

class FizzBuzzTest {

    @Test
    @DisplayName("It should be 'Fizz' for multiples of 3")
    fun shouldBeFizzForMultiplesOfThree() {
        val cases: IntArray = intArrayOf(3, 6, 9, 12, 18, 21, 24, 27, 33, 36)
        cases.iterator().forEach {
            assertEquals(fizzbuzz(it), "Fizz")
        }
    }

    @Test
    @DisplayName("It should be 'Buzz' for multiples of 5")
    fun shouldBeBuzzForMultiplesOfFive() {
        val cases: IntArray = intArrayOf(5, 10, 20, 25, 35, 40, 50, 55, 70, 80)
        cases.iterator().forEach {
            assertEquals(fizzbuzz(it), "Buzz")
        }
    }

    @Test
    @DisplayName("It should be 'FizzBuzz' for multiples of 3 and 5")
    fun shouldBeFizzBuzzForMultiplesOfThreeAndFive() {
        val cases: IntArray = intArrayOf(15, 30, 45, 60, 75, 90, 105, 120, 135, 150)
        cases.iterator().forEach {
            assertEquals(fizzbuzz(it), "FizzBuzz")
        }
    }
}