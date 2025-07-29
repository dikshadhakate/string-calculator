class StringCalculator

	def add(string_numbers)
		return 0 if string_numbers.empty?

		numbers = if string_numbers.start_with?("//")
			delimiter = string_numbers[2]
			number_string = string_numbers[4..]
			number_string.split(/#{delimiter}|\n/).map(&:to_i)
		else
			string_numbers.split(/,|\n/).map(&:to_i)
		end

		negative_nums = numbers.select { |n| n < 0}
		unless negative_nums.empty?
	  	raise "Negative numbers are not allowed: #{negative_nums.join(',')}"
	  end

		numbers.sum
	end
end