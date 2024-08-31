require 'rspec'
require_relative '../string_calculator'

describe '#add' do
	it 'returns 0 for an empty string' do
		expect(add("")).to eq(0)
	end
end