pub fn fizzbuzz(number: i32) -> Option<&'static str> {
    if number%3 == 0 && number%5 == 0 {
        return Some("FizzBuzz");
    } else if number%3 == 0 {
        return Some("Fizz");
    } else if number%5 == 0 {
        return Some("Buzz");
    } else {
        return None;
    }
}

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn fizz_cases() {
        let cases: [i32; 10] = [3, 6, 9, 12, 18, 21, 24, 27, 33, 36];

        for number in cases.iter() {
            let result: Option<&'static str> = fizzbuzz(*number);

            if let Some(text) = result {
                assert_eq!(text, "Fizz");
            } else {
                assert!(false);
            }
        }
    }

    #[test]
    fn buzz_cases() {
        let cases: [i32; 10] = [5, 10, 20, 25, 35, 40, 50, 55, 70, 80];

        for number in cases.iter() {
            let result: Option<&'static str> = fizzbuzz(*number);

            if let Some(text) = result {
                assert_eq!(text, "Buzz");
            } else {
                assert!(false);
            }
        }
    }

    #[test]
    fn fizzbuzz_cases() {
        let cases: [i32; 10] = [15, 30, 45, 60, 75, 90, 105, 120, 135, 150];

        for number in cases.iter() {
            let result: Option<&'static str> = fizzbuzz(*number);

            if let Some(text) = result {
                assert_eq!(text, "FizzBuzz");
            } else {
                assert!(false);
            }
        }
    }
}
