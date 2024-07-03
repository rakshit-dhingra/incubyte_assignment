require 'rspec'
require_relative '../string_calculator'

RSpec.describe StringCalculator do
  describe ".add" do

    it 'returns 0 when nothing blank string is passed' do
      expect(StringCalculator.add("")).to eq(0)
    end
  end
end