require 'string_calculator'

RSpec.describe StringCalculator do

  describe '#add' do
    it 'returns 0 for an empty string' do
      calculator = StringCalculator.new
      expect(calculator.add("")).to eq(0)
    end

    it 'returns the same number when one number is given' do
      calculator = StringCalculator.new
      expect(calculator.add("3")).to eq(3)
    end

    it 'returns the sum of two numbers' do
      calculator = StringCalculator.new
      expect(calculator.add("3,2")).to eq(5)
    end
  end
end
