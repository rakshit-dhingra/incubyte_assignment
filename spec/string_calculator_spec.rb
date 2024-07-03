require 'rspec'
require_relative '../string_calculator'

RSpec.describe StringCalculator do
  describe ".add" do

    it 'returns 0 when nothing blank string is passed' do
      expect(StringCalculator.add("")).to eq(0)
    end

    it 'returns number when single number is passed' do
      expect(StringCalculator.add("1")).to eq(1)
    end

    it 'returns sum of numbers when two numbers passed with comma separated values' do
      expect(StringCalculator.add("1,5")).to eq(6)
    end

    it 'should handle any amount of numbers' do
      expect(StringCalculator.add("1,2,3,4,5")).to eq(15)
    end

    it 'should handle \n in between the numbers' do
      expect(StringCalculator.add("1\n2,3")).to eq(6)
    end
  end
end