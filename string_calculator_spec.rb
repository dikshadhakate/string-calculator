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

	it 'return sum of two comma-seperated numbers' do 
		calc = StringCalculator.new
		expect(calc.add("1,5,7,9")).to eq(22)
	end
end