#This method is use to perform the addition operation on string numbers
def add(string_numbers)
	return 0 if string_numbers.empty?

	if string_numbers.start_with?("//")
		delimiter = string_numbers[2]
		string_numbers = string_numbers[4..]
		numbers = string_numbers.split(/#{delimiter}|\n/)
	else
		numbers = string_numbers.split(/,|\n/)
	end

	nums = numbers.map(&:to_i)
	negative_nums = nums.select { |n| n < 0}
	raise "Negative numbers are not allowed: #{negative_nums.join(',')}" unless negative_nums.empty?
	nums.sum
end