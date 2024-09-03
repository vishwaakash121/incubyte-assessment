#NOTE: Added file for testing the add method logic with varied inputs - not relevant with TDD

require_relative 'lib/string_calculator'

calculator = StringCalculator.new

puts calculator.add("")
puts calculator.add("1")
puts calculator.add("1,2")
puts calculator.add("1,2,3,4,5")
puts calculator.add("1\n2,3")
puts calculator.add("//;\n1;2")

begin
  puts calculator.add("1,-2,3,-4")
rescue => e
  puts e.message
end
