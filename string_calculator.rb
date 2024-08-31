#This method is use to perform the addition operation on string numbers
def add(string_numbers)
	return 0 if string_numbers.empty?
	string_numbers.split(/,|\n/).map(&:to_i).sum
end
