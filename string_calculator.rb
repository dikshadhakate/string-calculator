class StringCalculator

	def add(string_numbers)
		return 0 if string_numbers.empty?

		if string_numbers.start_with?("//")
			delimiter = string_numbers[2]
			filter_str = string_numbers[4..]
			filter_str.split(/#{delimiter}|\n/).map(&:to_i).sum
		else
			string_numbers.split(/,|\n/).map(&:to_i).sum
		end
	end
end