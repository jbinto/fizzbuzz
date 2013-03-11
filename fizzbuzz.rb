class FizzBuzz
	def self.identify(number)
		result = ""
		result += "fizz" if divisible_by_or_contains(number, 3)			
		result += "buzz" if divisible_by_or_contains(number, 5)

		if result.empty?
			number.to_s
		else
			result
		end
	end

	private
	def self.divisible_by_or_contains(number, included)
		number % included == 0 || number.to_s.include?(included.to_s)
	end

end