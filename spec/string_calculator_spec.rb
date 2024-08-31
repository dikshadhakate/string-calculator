require 'rspec'
require_relative '../string_calculator'

describe '#add' do
	it 'returns the number for a single input' do
		expect(add("5")).to eq(5)
	end
end