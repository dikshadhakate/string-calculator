require 'rspec'
require_relative '../string_calculator'

describe '#add' do
	it 'returns the sum of 2 numbers' do
		expect(add("5,4")).to eq(9)
	end
end