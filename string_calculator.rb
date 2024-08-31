#This method is use to perform the addition operation on string numbers
def add(string_numbers)
	return 0 if string_numbers.empty?

	if string_numbers.start_with?("//")
		delimiter = string_numbers[2]
		string_numbers = string_numbers[4..]
		string_numbers.split(/#{delimiter}|\n/).map(&:to_i).sum
	else
		string_numbers.split(/,|\n/).map(&:to_i).sum
	end
end