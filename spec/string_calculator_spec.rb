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
  end
end