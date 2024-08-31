require 'rspec'
require_relative '../string_calculator'

describe '#add' do
	it 'supports custom delimiter' do
		expect(add("//;\n1;2")).to eq(3)
	end
end