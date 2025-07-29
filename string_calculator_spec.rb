require_relative './string_calculator'
require 'rspec'

RSpec.describe StringCalculator do 

	it 'returns 0 for an empty string' do
		calc = StringCalculator.new
		expect(calc.add("")).to eq(0)
	end

	it 'return number itself when only one number' do
		calc = StringCalculator.new
		expect(calc.add("1")).to eq(1)
	end

	it 'return sum of two comma-seperated numbers' do 
		calc = StringCalculator.new
		expect(calc.add("1,5")).to eq(6)
	end

	it 'return sum of multiple comma-seperated numbers' do 
		calc = StringCalculator.new
		expect(calc.add("1,5,7,9")).to eq(22)
	end

	it 'return sum of numbers which has new line & comma in between numbers' do 
		calc = StringCalculator.new
		expect(calc.add("1\n2,3")).to eq(6)
	end

	it 'return sum of number which has custom delimiter in between' do
		calc = StringCalculator.new
		expect(calc.add("//;\n1;2")).to eq(3)
	end
end