require 'simplecov'
SimpleCov.start

require 'test/unit'
require_relative 'fizzbuzz'

class FizzBuzzTest < Test::Unit::TestCase
	def test_div_by_3_returns_fizz
		assert_equal "fizz", FizzBuzz.identify(6)
	end

	def test_div_by_5_returns_buzz
		assert_equal "buzz", FizzBuzz.identify(10)
	end

	def test_contains_5_returns_buzz
		assert_equal "buzz", FizzBuzz.identify(152)
	end

	def test_contains_5_and_div_by_3_returns_fizzbuzz
		assert_equal "fizzbuzz", FizzBuzz.identify(153)
	end

	def test_contains_3_and_div_by_5_returns_fizzbuzz
		assert_equal "fizzbuzz", FizzBuzz.identify(335)
	end

	def test_regular_number_returns_itself
		assert_equal "1", FizzBuzz.identify(1)
	end

end