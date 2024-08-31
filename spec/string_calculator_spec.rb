require 'rspec'
require_relative '../string_calculator'

describe '#add' do
	it 'returns the sum of multiple numbers' do
		expect(add("1\n2,3")).to eq(6)
	end
end