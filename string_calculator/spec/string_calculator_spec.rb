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

    it 'returns the sum of multiple numbers' do
      calculator = StringCalculator.new
      expect(calculator.add("3,2,7")).to eq(12)
    end

    it 'handles new lines between numbers' do
      calculator = StringCalculator.new
      expect(calculator.add("3\n2,7")).to eq(12)
    end

    it 'handles custom delimiters' do
      calculator = StringCalculator.new
      expect(calculator.add("//;\n1;2")).to eq(3)
    end

    it 'raises an exception for negative numbers' do
      calculator = StringCalculator.new
      expect { calculator.add("1,-2,3,-4") }.to raise_error("negative numbers not allowed: -2, -4")
    end
  end
end
